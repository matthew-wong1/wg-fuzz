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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_buffer300 = command_encoder300.finish();
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.submit([command_buffer300, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    device30.pushErrorScope("out-of-memory");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    device30.pushErrorScope("internal");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    device60.destroy();
    device30.pushErrorScope("internal");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.pushErrorScope("validation");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    render_pass_encoder7000.executeBundles([])
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder7000.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder7000.insertDebugMarker("marker");
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder7010.setStencilReference(1);
    device40.destroy();
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3030.setStencilReference(1);
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    render_pass_encoder7010.executeBundles([])
    render_pass_encoder7000.setStencilReference(1);
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.executeBundles([])
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder7010.executeBundles([])
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder7000.executeBundles([])
    compute_pass_encoder3010.insertDebugMarker("marker")
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder3030.executeBundles([])
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3010.insertDebugMarker("marker")
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    
    
    render_pass_encoder7010.pushDebugGroup("group_marker");
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    render_pass_encoder7000.setStencilReference(1);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.executeBundles([])
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    render_pass_encoder7000.insertDebugMarker("marker");
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    const texture_view7021 = texture702.createView({ label: "texture_view7021" });
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder7010.insertDebugMarker("marker");
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    
    
    
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder7010.setStencilReference(1);
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    render_pass_encoder7010.executeBundles([])
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view7022 = texture702.createView({ label: "texture_view7022" });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3030.executeBundles([])
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view3025 = texture302.createView({ label: "texture_view3025" });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    render_pass_encoder7000.setStencilReference(1);
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture_view3016 = texture301.createView({ label: "texture_view3016" });
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const texture_view7041 = texture704.createView({ label: "texture_view7041" });
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    
    
    const texture_view3017 = texture301.createView({ label: "texture_view3017" });
    render_pass_encoder7010.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3033 = texture303.createView({ label: "texture_view3033" });
    const texture_view3018 = texture301.createView({ label: "texture_view3018" });
    render_pass_encoder7000.insertDebugMarker("marker");
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view7042 = texture704.createView({ label: "texture_view7042" });
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.setStencilReference(1);
    
    render_pass_encoder3030.setStencilReference(1);
    device70.pushErrorScope("out-of-memory");
    
    
    render_pass_encoder3040.executeBundles([])
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3040.setStencilReference(1);
    
    device70.pushErrorScope("out-of-memory");
    render_pass_encoder3030.executeBundles([])
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device80.pushErrorScope("out-of-memory");
    
    render_pass_encoder7010.setStencilReference(1);
    
    render_pass_encoder7000.executeBundles([])
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    
    const texture_view7050 = texture705.createView({ label: "texture_view7050" });
    const texture706 = device70.createTexture({
        label: "texture706",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3034 = texture303.createView({ label: "texture_view3034" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_pass_encoder7000.setStencilReference(1);
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.insertDebugMarker("marker");
    
    const texture_view7031 = texture703.createView({ label: "texture_view7031" });
    
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder7000.executeBundles([])
    
    const texture_view7032 = texture703.createView({ label: "texture_view7032" });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device30.pushErrorScope("validation");
    render_pass_encoder7000.setStencilReference(1);
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3030.setStencilReference(1);
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    
    const texture_view3071 = texture307.createView({ label: "texture_view3071" });
    const texture_view3035 = texture303.createView({ label: "texture_view3035" });
    const texture_view7043 = texture704.createView({ label: "texture_view7043" });
    const texture_view3019 = texture301.createView({ label: "texture_view3019" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_pass_encoder3050.executeBundles([])
    render_pass_encoder7000.executeBundles([])
    render_pass_encoder3040.setStencilReference(1);
    
    
    
    
    
    render_pass_encoder3050.executeBundles([])
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    
    
    
    render_pass_encoder7000.executeBundles([])
    
    render_pass_encoder3030.executeBundles([])
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder7010.setStencilReference(1);
    
    const texture_view7013 = texture701.createView({ label: "texture_view7013" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view7014 = texture701.createView({ label: "texture_view7014" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder3040.executeBundles([])
    
    
    
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    const texture_view7015 = texture701.createView({ label: "texture_view7015" });
    const texture_view3026 = texture302.createView({ label: "texture_view3026" });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const texture_view3036 = texture303.createView({ label: "texture_view3036" });
    const texture_view3006 = texture300.createView({ label: "texture_view3006" });
    
    render_pass_encoder3040.executeBundles([])
    render_pass_encoder3030.setStencilReference(1);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_pass_encoder7020.setStencilReference(1);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder7000.executeBundles([])
    render_pass_encoder3020.setStencilReference(1);
    const texture_view3027 = texture302.createView({ label: "texture_view3027" });
    render_pass_encoder3050.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7020.pushDebugGroup("group_marker");
    
    const texture_view3062 = texture306.createView({ label: "texture_view3062" });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    render_pass_encoder3020.setStencilReference(1);
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7033 = texture703.createView({ label: "texture_view7033" });
    
    const texture_view30110 = texture301.createView({ label: "texture_view30110" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    const texture_view3080 = texture308.createView({ label: "texture_view3080" });
    
    const texture_view3052 = texture305.createView({ label: "texture_view3052" });
    render_pass_encoder3020.setStencilReference(1);
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device100.pushErrorScope("out-of-memory");
    const texture_view3081 = texture308.createView({ label: "texture_view3081" });
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3050.pushDebugGroup("group_marker");
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer800 = command_encoder800.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1001 = command_encoder1001.finish();
}