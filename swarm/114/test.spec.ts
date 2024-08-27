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
    const array0 = new Float32Array([0.5, 0.5, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, 0.75, -0.5, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, 1.0, -0.75, 0.5, -0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 0.75, -0.5, -1.0, 0.0, -0.25, 0.5, 0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 0.0, -0.25, -0.25, -1.0, -0.75, -1.0, 0.75, 1.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 1.0, -0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 0.75, -1.0, -1.0, -0.75, 0.0, 0.5, -1.0, 0.75, 0.0, -0.5, ]);
    
    const array1 = new Float32Array([-0.75, 0.0, -0.75, 0.75, 0.0, 0.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.75, -0.5, 0.5, 0.5, 0.25, 0.5, -1.0, 0.75, -1.0, -1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -1.0, 0.25, -0.5, -1.0, 0.25, -0.5, 1.0, -0.25, -0.5, -1.0, -0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 0.5, -0.75, 1.0, -1.0, -0.25, 1.0, 1.0, 0.75, 0.25, -0.25, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    device00.pushErrorScope("out-of-memory");
    texture000.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer000.destroy()
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("validation");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer200 = command_encoder200.finish();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder201.popDebugGroup();
    
    const array2 = new Float32Array([-1.0, -0.25, 0.75, 0.0, -0.75, -0.25, -0.25, -0.25, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.75, -0.5, -1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, 0.5, 0.0, 0.5, 0.5, -0.25, -1.0, 0.75, -0.25, -0.25, 0.25, 0.75, 0.0, -0.5, 0.0, -0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -0.75, -0.5, 0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, 0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -0.25, 0.75, -0.75, 0.75, 0.25, -0.5, -1.0, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture202.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array3 = new Float32Array([-0.5, -0.75, -1.0, -1.0, -0.5, -0.75, -0.5, -0.25, 1.0, 0.5, -0.25, -1.0, 0.25, -0.5, -0.25, -0.5, -0.5, 0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 1.0, 0.25, 0.75, -1.0, -0.25, -0.75, -0.25, 1.0, 0.75, 1.0, -0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, 1.0, 0.5, 1.0, -1.0, -0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, 0.0, 1.0, -1.0, -1.0, 0.0, 1.0, 0.75, 0.25, 1.0, -0.5, 0.5, 0.5, -0.75, 1.0, -0.25, 0.25, -0.25, 0.75, 0.25, 0.25, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.25, -0.5, 0.5, -0.5, 0.75, 0.75, 0.0, -0.5, 1.0, -1.0, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    
    const array4 = new Float32Array([-0.5, -0.5, -0.5, -0.75, -1.0, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, -1.0, 0.5, -1.0, -0.75, 0.75, -0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.25, -0.75, 0.75, 0.0, -0.25, -0.5, 0.5, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 0.25, 0.5, -0.25, 0.0, 0.25, -1.0, -0.75, -0.75, 0.0, -1.0, 0.75, 0.5, -0.75, -1.0, -0.75, 1.0, 0.75, -0.75, 0.25, 0.5, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const array5 = new Float32Array([0.5, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, -0.5, 0.0, 0.25, 0.5, 1.0, 0.0, -0.75, 0.5, -1.0, -1.0, 0.0, 0.75, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 1.0, 0.0, -0.25, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 0.75, 0.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.75, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, -1.0, 1.0, -0.25, -0.5, 0.25, -0.75, 0.5, 1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, -0.25, -1.0, 0.0, 0.5, 0.75, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    texture200.destroy();
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    device20.pushErrorScope("out-of-memory");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2015 = texture201.createView({ label: "texture_view2015" });
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device40.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.popDebugGroup();
    
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
        occlusionQuerySet: undefined
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.0, 0.5, 0.5, 0.0, 0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 0.5, -0.5, 0.0, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.75, 0.0, -1.0, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, 0.0, -0.75, -0.25, 0.25, 0.5, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, 0.5, 0.75, -0.25, -0.5, 0.5, -0.25, -0.75, 0.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.0, 1.0, 1.0, 0.75, -0.5, 0.0, 1.0, -0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, 0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.5, -0.5, -0.75, -0.25, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, ]);
    render_pass_encoder2030.executeBundles([])
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder201.popDebugGroup();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.25, -1.0, 0.0, 1.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, 0.0, -0.75, 1.0, 1.0, -0.75, -0.5, -0.75, -1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.75, -0.5, 0.75, 0.5, 0.5, -0.5, -0.25, 0.0, -0.25, 0.75, -0.75, -0.75, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.25, 0.25, -0.25, -0.5, 0.0, -0.5, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.0, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device60.pushErrorScope("validation");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder200.popDebugGroup();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    command_encoder600.insertDebugMarker("mymarker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture204.destroy();
    texture301.destroy();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_buffer501 = command_encoder501.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder501.popDebugGroup();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    
    render_bundle_encoder202.popDebugGroup();
    buffer500.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.submit([command_buffer200, ]);
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder500.popDebugGroup();
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder2020.popDebugGroup();
    device30.pushErrorScope("out-of-memory");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.executeBundles([])
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5000.insertDebugMarker("marker");
    
    
    texture500.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    texture501.destroy();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    device60.pushErrorScope("out-of-memory");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.popDebugGroup();
    
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder201.popDebugGroup();
    buffer203.destroy()
    render_pass_encoder2020.setStencilReference(1);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder502.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.75, -1.0, 0.25, 0.25, 0.0, 0.75, 0.5, -1.0, 0.25, 0.25, -0.25, 0.75, -0.75, -1.0, 0.25, -0.25, -1.0, 0.5, -1.0, 0.75, 0.75, -0.25, 0.5, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.25, 0.75, -1.0, -0.75, 0.0, 0.0, 0.5, 0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -1.0, -0.5, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 0.25, 1.0, -0.75, -1.0, -0.5, 1.0, 0.5, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.5, 1.0, 0.25, -0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -1.0, -0.5, -0.25, 0.75, -1.0, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder601.insertDebugMarker("marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder5000.executeBundles([])
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2013,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2040.beginOcclusionQuery(0)
    render_bundle_encoder500.insertDebugMarker("marker");
    
    buffer204.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder302.popDebugGroup();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    texture600.destroy();
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2020.popDebugGroup();
    
    texture205.destroy();
    
    buffer202.destroy()
    render_pass_encoder2040.executeBundles([])
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder600.popDebugGroup()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer601 = command_encoder601.finish();
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder5000.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder502.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    render_pass_encoder5000.executeBundles([])
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    render_pass_encoder5000.beginOcclusionQuery(0)
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.popDebugGroup();
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer700 = command_encoder700.finish();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder2020.executeBundles([])
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    render_bundle_encoder701.popDebugGroup();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder700.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    buffer600.destroy()
    buffer700.destroy()
    render_pass_encoder2020.setStencilReference(1);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder5000.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.pushErrorScope("out-of-memory");
    device50.queue.submit([command_buffer501, ]);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_pass_encoder2040.executeBundles([])
    render_bundle_encoder502.popDebugGroup();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    texture203.destroy();
    render_bundle_encoder600.popDebugGroup();
    buffer200.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder5020.beginOcclusionQuery(1)
    buffer300.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder300.popDebugGroup();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setStencilReference(1);
    
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder600.popDebugGroup()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device70.queue.submit([command_buffer700, ]);
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array9 = new Float32Array([0.25, -0.25, -1.0, 0.75, -1.0, -0.75, 0.5, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, -0.5, 0.75, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, 0.5, 0.0, 0.75, 1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.5, 0.5, 0.25, -0.5, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, 1.0, 0.75, -0.75, 0.5, 1.0, 0.75, -0.5, 1.0, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, -0.25, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.25, 1.0, 0.25, -0.5, 1.0, 0.25, -1.0, -0.75, ]);
    device70.pushErrorScope("out-of-memory");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query201
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2050.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    texture303.destroy();
    render_pass_encoder2040.executeBundles([])
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder3010.popDebugGroup();
}