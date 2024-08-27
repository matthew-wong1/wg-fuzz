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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    query001.destroy()
    const array0 = new Float32Array([1.0, -0.25, -0.75, 0.5, 0.75, 0.0, -0.5, 0.75, -1.0, 0.25, -0.25, -1.0, 1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, -0.75, 0.0, -0.75, -0.5, 0.5, 0.0, 0.75, -0.5, -0.75, -0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, 1.0, 1.0, 0.25, 1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.25, -0.25, 1.0, -0.75, -0.75, -1.0, -0.5, 1.0, 0.75, 1.0, -0.75, -0.75, -0.75, -0.25, -0.25, 0.5, 0.0, 0.75, -0.5, -1.0, 0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.75, 0.5, 0.0, ]);
    query001.destroy()
    
    
    query000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    texture000.destroy();
    
    
    texture001.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer100 = command_encoder100.finish();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer003 = command_encoder003.finish();
    const command_buffer001 = command_encoder001.finish();
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    query002.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder101.insertDebugMarker("mymarker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture002.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    query100.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query003.destroy()
    texture100.destroy();
    
    render_pass_encoder0020.executeBundles([])
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query001.destroy()
    query001.destroy()
    
    query100.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query001.destroy()
    texture400.destroy();
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.setStencilReference(1);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query202.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    query101.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    query000.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    render_bundle_encoder002.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    query200.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder0040.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_buffer202 = command_encoder202.finish();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query004.destroy()
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query100.destroy()
    query200.destroy()
    texture003.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture500.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query003.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer501 = command_encoder501.finish();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    texture102.destroy();
    render_bundle_encoder000.popDebugGroup();
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    texture401.destroy();
    query003.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0040.executeBundles([])
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    render_pass_encoder2030.executeBundles([])
    query100.destroy()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.executeBundles([])
    
    query203.destroy()
    query000.destroy()
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder200.insertDebugMarker("mymarker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query004.destroy()
    render_pass_encoder0000.setStencilReference(1);
    query202.destroy()
    render_bundle_encoder400.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    query401.destroy()
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    texture403.destroy();
    render_pass_encoder2040.setStencilReference(1);
    
    query000.destroy()
    
    texture103.destroy();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture402.destroy();
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query206.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer300 = command_encoder300.finish();
    query206.destroy()
    query401.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query102.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    query207.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    render_pass_encoder2040.setStencilReference(1);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    query401.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0050.insertDebugMarker("marker");
    
    texture404.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    render_pass_encoder0040.executeBundles([])
    
    texture104.destroy();
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder100.popDebugGroup();
    query205.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    query207.destroy()
    
    
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query204.destroy()
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder1010.setStencilReference(1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    render_pass_encoder2030.setStencilReference(1);
    query401.destroy()
    
    render_pass_encoder2040.setStencilReference(1);
    command_encoder103.insertDebugMarker("mymarker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder0060.setStencilReference(1);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device20.queue.submit([command_buffer202, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.submit([command_buffer300, ]);
    
    const command_buffer007 = command_encoder007.finish();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query002.destroy()
    query002.destroy()
    render_pass_encoder2040.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    query207.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder601.insertDebugMarker("mymarker");
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    query401.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_pass_encoder0040.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.executeBundles([])
    texture503.destroy();
    const command_buffer601 = command_encoder601.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    query002.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    
    query002.destroy()
    query402.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    texture302.destroy();
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    query102.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder5000.setStencilReference(1);
    query206.destroy()
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.executeBundles([])
    command_encoder600.pushDebugGroup("mygroupmarker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    texture202.destroy();
    query206.destroy()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query102.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_bundle_encoder402.popDebugGroup();
    
    query403.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query403.destroy()
    texture300.destroy();
    const array1 = new Float32Array([-0.75, -0.75, 0.5, 0.5, -0.75, -0.5, 1.0, 0.75, 0.0, -1.0, 0.25, -0.75, 0.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.25, -1.0, -0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, -0.5, -1.0, 1.0, -0.75, -0.5, 0.5, 0.5, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, -0.25, -0.25, -0.75, 0.75, -0.75, -0.5, -0.25, 0.25, 0.0, 0.25, -0.25, 0.25, 0.25, 0.75, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, -0.25, -1.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.25, -1.0, -0.5, 0.0, 0.0, ]);
    render_pass_encoder1030.executeBundles([])
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    texture004.destroy();
    
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    query200.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.submit([command_buffer201, ]);
    device60.queue.submit([command_buffer601, ]);
}