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
        powerPreference: undefined
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    device00.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    query000.destroy()
    query000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer000 = command_encoder000.finish();
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query001.destroy()
    texture003.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
    device30.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query001.destroy()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query002.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    texture002.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.pushErrorScope("internal");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query003.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device60.pushErrorScope("validation");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_pass_encoder0010.executeBundles([])
    device50.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    
    render_pass_encoder0010.setStencilReference(1);
    query001.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.pushErrorScope("out-of-memory");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.setStencilReference(1);
    query000.destroy()
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    texture005.destroy();
    query002.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    query001.destroy()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    texture004.destroy();
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    query300.destroy()
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0010.insertDebugMarker("marker");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query601.destroy()
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0040.setStencilReference(1);
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    
    
    device40.pushErrorScope("internal");
    query000.destroy()
    texture300.destroy();
    query301.destroy()
    device30.destroy();
    query001.destroy()
    
    device00.queue.submit([command_buffer000, ]);
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0030.executeBundles([])
    texture601.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    query601.destroy()
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    texture602.destroy();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.executeBundles([])
    
    query400.destroy()
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0040.pushDebugGroup("group_marker");
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder601.insertDebugMarker("mymarker");
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query601
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder0020.popDebugGroup();
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    query600.destroy()
    
    render_pass_encoder6010.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder6010.setStencilReference(1);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder6020.setStencilReference(1);
    
    
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    
    render_pass_encoder0010.setStencilReference(1);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query005
    });
    
    render_pass_encoder6020.setStencilReference(1);
    
    query003.destroy()
    
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    device60.queue.submit([command_buffer600, ]);
    
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder0030.setStencilReference(1);
    
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder0030.setStencilReference(1);
    
    
    
    render_pass_encoder0050.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    query003.destroy()
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    texture400.destroy();
    query600.destroy()
    render_pass_encoder6030.pushDebugGroup("group_marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture008.destroy();
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_pass_encoder6020.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    query004.destroy()
    query600.destroy()
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6030.insertDebugMarker("marker");
    query006.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder6010.executeBundles([])
    
    query401.destroy()
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    texture603.destroy();
    
    render_pass_encoder6020.insertDebugMarker("marker");
    
    device60.pushErrorScope("out-of-memory");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.setStencilReference(1);
    
    query601.destroy()
    render_pass_encoder6020.pushDebugGroup("group_marker");
    render_pass_encoder6030.popDebugGroup();
    
    
    query602.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    query002.destroy()
    
    texture600.destroy();
    query005.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    
    render_pass_encoder6020.setStencilReference(1);
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder6020.setStencilReference(1);
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder6030.setStencilReference(1);
    query602.destroy()
    
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query601.destroy()
    
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    query002.destroy()
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
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
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    query600.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6030.insertDebugMarker("marker");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6030.setStencilReference(1);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query001.destroy()
    
    
    render_pass_encoder6030.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    query400.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    render_pass_encoder6010.pushDebugGroup("group_marker");
    render_pass_encoder6030.insertDebugMarker("marker");
    
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder4020.executeBundles([])
    query008.destroy()
    render_pass_encoder6030.executeBundles([])
    
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
}