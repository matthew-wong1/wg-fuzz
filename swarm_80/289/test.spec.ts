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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array0 = new Float32Array([0.25, -1.0, -0.75, 0.0, -0.5, -0.75, -0.25, -0.25, -1.0, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.25, -1.0, -0.25, -0.5, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, 0.25, -1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, -0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 0.25, 0.5, 1.0, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, -0.75, 1.0, -0.25, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    texture100.destroy();
    query100.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 1.0, -1.0, 0.0, 0.75, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.5, -0.5, 0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.0, 0.75, -0.5, 0.75, -0.25, 0.5, 0.75, 0.0, 0.0, 1.0, -0.75, -0.25, -0.25, 0.75, -0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 0.0, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, -0.5, -0.75, -0.25, 0.75, -0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 0.25, -1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 1.0, -0.5, 0.5, 0.0, -0.5, 0.0, 0.5, -1.0, -0.5, -0.5, -0.75, -0.25, -0.75, -1.0, -0.5, ]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.25, 0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.25, -0.25, -0.5, -0.25, 0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 0.0, -0.75, -1.0, -0.5, 0.0, -0.75, -0.75, 1.0, -0.75, 0.25, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 0.5, 0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 0.25, -1.0, -1.0, -1.0, -0.75, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, -0.5, 1.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, -1.0, 0.5, -0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 0.0, 0.5, -0.5, ]);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
        occlusionQuerySet: query103
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.executeBundles([])
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.executeBundles([])
    
    query100.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    query106.destroy()
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query106.destroy()
    
    
    query100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query103.destroy()
    
    query101.destroy()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    
    const array3 = new Float32Array([0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, 0.0, -0.25, -1.0, 1.0, 0.25, 0.25, 1.0, -1.0, -1.0, -0.75, -0.25, 0.5, 0.25, 1.0, 0.25, 0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, -0.25, -0.75, -1.0, 0.75, 1.0, -0.25, 0.5, -1.0, 0.75, -0.25, -0.25, 0.0, 1.0, 0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, 0.5, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, -1.0, -0.5, 0.5, 0.0, -0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1010.setStencilReference(1);
    query105.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: query102
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query103.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture101.destroy();
    render_pass_encoder1020.pushDebugGroup("group_marker");
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1000.executeBundles([])
    query102.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer400 = command_encoder400.finish();
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.executeBundles([])
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device40.queue.submit([command_buffer400, ]);
    
    render_pass_encoder1020.setStencilReference(1);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder401.pushDebugGroup("mygroupmarker")
    query101.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const array4 = new Float32Array([-0.25, -1.0, -1.0, 0.5, 0.0, 0.0, 0.25, -0.75, 0.25, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 1.0, -0.5, -0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, -0.5, 0.25, -0.5, -0.5, -0.75, -0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.25, 0.0, 1.0, -0.5, 1.0, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.5, -0.25, 0.25, -0.25, -1.0, -0.25, -0.5, -1.0, -0.75, -0.75, 0.5, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, 1.0, -0.5, 0.25, 0.25, -1.0, 0.0, 0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.25, -0.75, -0.5, -0.5, -0.5, 0.5, 0.75, 0.75, -0.25, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    query108.destroy()
    query103.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture301.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder1020.popDebugGroup();
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    query101.destroy()
    
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    query105.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_pass_encoder1010.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder3010.setStencilReference(1);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setStencilReference(1);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture500.destroy();
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const array5 = new Float32Array([-1.0, 0.25, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, 0.0, 0.0, 0.75, 0.5, 0.25, -0.5, 0.0, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.5, -0.25, -1.0, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.25, 1.0, -1.0, -1.0, 0.75, 0.0, 0.5, -0.75, 1.0, 1.0, 0.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.75, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.75, 1.0, 0.25, 0.25, 1.0, 1.0, -0.75, ]);
    query101.destroy()
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query101.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.setStencilReference(1);
    query102.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer402 = command_encoder402.finish();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    
    texture300.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device60.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query104.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1040.executeBundles([])
    query106.destroy()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.popDebugGroup();
    const command_buffer700 = command_encoder700.finish();
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    query102.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query101.destroy()
    
    texture400.destroy();
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query106
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.executeBundles([])
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    query102.destroy()
    texture501.destroy();
    
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    render_pass_encoder3020.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const array6 = new Float32Array([-0.5, 0.25, -0.5, 0.25, 0.5, 0.25, -0.25, 0.25, 0.25, -1.0, -0.25, 0.5, -1.0, -1.0, 0.0, -0.25, -0.25, 0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, 0.75, -0.25, -0.5, -0.25, -0.25, -0.5, -0.5, 0.75, -0.75, 1.0, -0.5, 0.5, -0.75, -0.5, -0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 1.0, 0.25, 0.0, 1.0, 1.0, -0.75, -0.25, 0.25, 0.75, -0.75, 0.25, -0.75, 0.75, 1.0, 1.0, -1.0, -0.5, 0.75, 0.5, 1.0, 0.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.75, 0.75, 0.5, -1.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.75, -0.5, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder3020.setStencilReference(1);
    query109.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    query101.destroy()
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    const command_buffer501 = command_encoder501.finish();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    texture502.destroy();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder3020.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query105.destroy()
    render_pass_encoder3020.executeBundles([])
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    render_pass_encoder3020.insertDebugMarker("marker");
    
    device20.destroy();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    query101.destroy()
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder1050.setStencilReference(1);
    
    
    render_pass_encoder1030.setStencilReference(1);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder3010.popDebugGroup();
    
    
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder4010.setStencilReference(1);
    
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    query106.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query102.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder3020.insertDebugMarker("marker");
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder1030.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    query500.destroy()
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder1070.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.popDebugGroup();
    texture700.destroy();
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    command_encoder502.popDebugGroup()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1060.insertDebugMarker("marker");
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query700.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query102.destroy()
    const command_buffer701 = command_encoder701.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query101.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture504 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query108.destroy()
    render_pass_encoder4010.pushDebugGroup("group_marker");
    query400.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query108.destroy()
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder1060.insertDebugMarker("marker");
    
    render_pass_encoder3020.executeBundles([])
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture504 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    device50.queue.submit([command_buffer500, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query300.destroy()
    render_pass_encoder1000.executeBundles([])
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.popDebugGroup();
    const command_buffer502 = command_encoder502.finish();
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder3020.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4030.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
}