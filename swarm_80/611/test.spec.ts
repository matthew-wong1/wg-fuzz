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
    
    const array0 = new Float32Array([0.25, -0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 0.5, 1.0, 0.5, -1.0, -0.25, 0.0, -0.75, -0.25, -0.5, -1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, -0.5, 0.75, 0.5, -0.5, -0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, -0.25, -0.25, 0.0, 0.25, 0.75, 0.75, 0.75, 0.0, 0.25, -0.5, 0.75, -0.75, -0.25, -0.5, 0.75, 1.0, -0.75, 0.0, -0.75, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, -0.75, 0.0, -0.25, 0.75, -0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 1.0, 0.5, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, 0.0, 0.75, 0.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array1 = new Float32Array([1.0, 1.0, 0.5, -0.5, 1.0, 0.5, 0.75, 0.0, -0.25, -0.5, 0.25, -1.0, 0.5, 1.0, 0.5, -1.0, 0.0, -0.75, 0.75, 0.75, 0.5, 0.25, -0.75, -0.75, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.0, 1.0, -1.0, 0.0, -0.75, 0.75, 0.75, 1.0, -0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.25, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.75, -1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -0.25, 1.0, 0.0, 0.25, -1.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -0.25, -0.25, -0.75, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array2 = new Float32Array([0.75, 0.0, 0.75, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.5, -0.5, 0.25, 0.0, -0.5, 0.75, -0.5, -0.75, 1.0, -1.0, 0.0, 0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 0.0, 0.75, 0.0, 0.5, -0.75, 0.75, 0.5, -1.0, -1.0, -0.25, 0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.25, 0.5, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, -0.75, 0.5, -0.75, 0.0, 1.0, -1.0, -0.25, 0.25, 0.25, -0.5, 0.5, -0.25, -1.0, 0.25, -0.75, 0.75, 0.75, 0.25, 1.0, 0.0, 0.25, 1.0, -0.25, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    
    const command_buffer100 = command_encoder100.finish();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query101.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([-1.0, -0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 0.5, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.25, 1.0, -0.25, 0.25, 0.5, -0.5, -0.75, 0.25, -1.0, -1.0, 0.25, 1.0, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 0.75, -1.0, -1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.25, 0.75, 0.25, -1.0, 1.0, -0.25, 1.0, -0.5, -1.0, -1.0, -0.25, -0.5, 0.5, -0.25, 0.0, 0.0, -0.5, 1.0, -0.75, -1.0, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, -0.5, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 0.75, 0.5, 0.75, -0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 0.5, ]);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    
    
    
    device60.destroy();
    query300.destroy()
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query103.destroy()
    texture300.destroy();
    command_encoder300.insertDebugMarker("mymarker");
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
        occlusionQuerySet: query102
    });
    query100.destroy()
    render_pass_encoder1010.executeBundles([])
    
    
    texture302.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    query300.destroy()
    
    render_pass_encoder1010.executeBundles([])
    device20.destroy();
    render_bundle_encoder301.popDebugGroup();
    query103.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3000.insertDebugMarker("marker");
    
    const array4 = new Float32Array([-0.75, 1.0, 0.5, -0.75, 0.75, 0.5, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, 0.25, 0.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.5, -0.5, 0.25, 0.0, 0.75, -0.5, 0.0, 0.5, 0.5, 0.0, -0.25, -0.25, 0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, 0.0, -0.5, 0.5, 0.25, -0.25, -0.25, -0.75, 0.75, 1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.0, 0.5, 0.5, 0.5, 0.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, 0.0, 1.0, 0.5, 1.0, -0.25, 1.0, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.0, -0.75, ]);
    query101.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const array5 = new Float32Array([0.75, -0.25, 0.0, -0.75, 1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.5, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 1.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.25, 0.5, -0.75, -1.0, 1.0, -0.25, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, -1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.5, -0.25, 0.75, 0.25, 0.5, 0.75, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, -0.25, -1.0, 0.75, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, 0.0, -0.25, 0.5, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.5, 0.0, 0.25, ]);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    query102.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    query100.destroy()
    device30.pushErrorScope("validation");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer100.destroy()
    
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query300.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer301.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    render_pass_encoder3000.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    query103.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query301.destroy()
    
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    
    
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder1010.executeBundles([])
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query100
    });
    texture301.destroy();
    texture100.destroy();
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder302.popDebugGroup();
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    render_pass_encoder1040.setStencilReference(1);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.executeBundles([])
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer302.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder1040.setStencilReference(1);
    
    render_pass_encoder1040.insertDebugMarker("marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device10.queue.submit([command_buffer103, ]);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer304.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    buffer303.destroy()
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    query103.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1010.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder1020.setStencilReference(1);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    device50.pushErrorScope("validation");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array6 = new Float32Array([1.0, -0.25, 0.75, 0.5, 0.25, -0.5, 0.5, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 0.0, 0.0, -1.0, -0.75, 1.0, -0.75, 0.5, -0.5, 0.25, 0.25, -1.0, 0.25, 1.0, 0.75, 0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, -0.5, -0.25, -0.5, 0.0, 0.25, 0.5, -0.5, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -0.75, 1.0, -0.75, -1.0, 0.75, 1.0, 1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.5, 0.25, -1.0, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.75, -0.75, 1.0, 0.0, -0.5, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 0.5, -0.5, ]);
    
    
    query100.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder3000.popDebugGroup();
    
    buffer305.destroy()
    query100.destroy()
    render_pass_encoder3010.setStencilReference(1);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.popDebugGroup();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    texture501.destroy();
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    query100.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    buffer501.destroy()
    render_pass_encoder3000.setStencilReference(1);
    render_bundle_encoder102.popDebugGroup();
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query301.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query501.destroy()
    
    texture101.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    texture700.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder101.popDebugGroup();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture500.destroy();
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.popDebugGroup();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1005,
            },
        ],
        occlusionQuerySet: query100
    });
    query304.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const array7 = new Float32Array([0.25, -1.0, 0.0, 0.25, -0.75, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -1.0, -0.5, -0.5, 0.25, -0.5, -1.0, 0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 1.0, 0.75, 0.25, -0.75, -0.75, -0.5, -0.25, -0.25, -0.5, -0.25, 0.25, 0.0, 0.75, -0.25, 1.0, 1.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.5, 0.0, -0.5, -0.5, 0.75, 0.5, 1.0, 0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, 1.0, -0.5, -0.5, 0.0, -0.25, 0.75, -1.0, 0.0, 0.75, -0.25, 0.5, -1.0, -0.25, -1.0, 0.0, -0.5, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query502.destroy()
    render_bundle_encoder500.popDebugGroup();
    
    render_pass_encoder1050.setStencilReference(1);
    query101.destroy()
    
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    query301.destroy()
    
    query502.destroy()
    query104.destroy()
    
    render_pass_encoder1040.setStencilReference(1);
    
    
    buffer500.destroy()
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query103.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    query102.destroy()
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    query304.destroy()
    query101.destroy()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder1050.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query303.destroy()
    
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    query503.destroy()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder301.popDebugGroup();
    query103.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3010.executeBundles([])
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder5010.beginOcclusionQuery(0)
    
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder1010.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder5010.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
}