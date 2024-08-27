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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer100 = command_encoder100.finish();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device20.pushErrorScope("internal");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture203 = device20.createTexture({
        label: "texture203",
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
    query200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    render_bundle_encoder200.popDebugGroup();
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
        occlusionQuerySet: query200
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query002.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder2000.beginOcclusionQuery(0)
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer000 = command_encoder000.finish();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    query004.destroy()
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder2001.setStencilReference(1);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_bundle_encoder201.popDebugGroup();
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query003.destroy()
    query102.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder2001.setStencilReference(1);
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query100.destroy()
    
    render_pass_encoder2000.setStencilReference(1);
    query004.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    query004.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder2000.endOcclusionQuery()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query005.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2001.beginOcclusionQuery(1)
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query002.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query002.destroy()
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2021.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query003.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder203.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2021.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    render_pass_encoder2010.setStencilReference(1);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
        occlusionQuerySet: query202
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("out-of-memory");
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2031.setStencilReference(1);
    
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.pushErrorScope("internal");
    render_pass_encoder2021.insertDebugMarker("marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2011.beginOcclusionQuery(0)
    render_pass_encoder1030.beginOcclusionQuery(0)
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder2021.setViewport(0, 0, texture204.width / 2, texture204.height / 2, 0, 1);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder2001.beginOcclusionQuery(1)
    render_pass_encoder2011.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1031.beginOcclusionQuery(0)
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.popDebugGroup();
    command_encoder102.insertDebugMarker("mymarker");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.pushErrorScope("internal");
    render_pass_encoder2031.pushDebugGroup("group_marker");
    query001.destroy()
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2030.popDebugGroup();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1031.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query003.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2021.beginOcclusionQuery(3)
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query005.destroy()
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_pass_encoder2022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query102.destroy()
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
        occlusionQuerySet: query005
    });
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2022.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder2022.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query103.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1021.setStencilReference(1);
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query005
    });
    query000.destroy()
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1031.beginOcclusionQuery(1)
    
    render_pass_encoder1040.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    render_pass_encoder0020.setStencilReference(1);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query001.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder2011.setStencilReference(1);
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder1030.setStencilReference(1);
    device20.pushErrorScope("internal");
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2021.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder2031.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    query005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query004
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query005
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder2031.insertDebugMarker("marker");
    query004.destroy()
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1050.setStencilReference(1);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2031.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query000.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder102.popDebugGroup();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0031.pushDebugGroup("group_marker");
    query204.destroy()
    render_pass_encoder1021.beginOcclusionQuery(0)
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1050.popDebugGroup();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1021.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.endOcclusionQuery()
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2031.endOcclusionQuery()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder2011.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2031.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2031.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2022.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder2031.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
}