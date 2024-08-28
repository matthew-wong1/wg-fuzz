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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.pushErrorScope("validation");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer100 = command_encoder100.finish();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    buffer100.destroy()
    
    
    device30.pushErrorScope("validation");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer400.destroy()
    const command_buffer300 = command_encoder300.finish();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer101.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device40.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer303 = command_encoder303.finish();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    buffer301.destroy()
    
    device30.pushErrorScope("out-of-memory");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    compute_pass_encoder1020.popDebugGroup()
    device10.pushErrorScope("internal");
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer304 = command_encoder304.finish();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3010.popDebugGroup()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    command_encoder305.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder305.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const command_buffer305 = command_encoder305.finish();
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer102.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device70.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    
    
    render_bundle_encoder302.popDebugGroup();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.popDebugGroup();
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const command_buffer307 = command_encoder307.finish();
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
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
    
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3060.setStencilReference(1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    device10.pushErrorScope("internal");
    compute_pass_encoder1020.popDebugGroup()
    
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder600.insertDebugMarker("mymarker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const command_buffer600 = command_encoder600.finish();
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3010.popDebugGroup()
    
    
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    
    
    device90.pushErrorScope("internal");
    render_pass_encoder3060.insertDebugMarker("marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    device60.pushErrorScope("out-of-memory");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer302.destroy()
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer303.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.pushErrorScope("validation");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1030.setStencilReference(1);
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    
    buffer900.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.popDebugGroup();
    device100.destroy();
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder3060.setStencilReference(1);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device90.destroy();
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    render_pass_encoder3060.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer104.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1030.popDebugGroup();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    buffer304.destroy()
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder3010.popDebugGroup()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3080.setStencilReference(1);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3080.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.submit([command_buffer600, ]);
    
    device50.pushErrorScope("validation");
    const render_pass_encoder3090 = command_encoder309.beginRenderPass({
        label: "render_pass_encoder3090",
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
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_encoder3010 = device30.createCommandEncoder({ label: "command_encoder3010" });
    buffer103.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder3090.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder3090.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder3010.insertDebugMarker("mymarker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    buffer300.destroy()
    const render_pass_encoder30100 = command_encoder3010.beginRenderPass({
        label: "render_pass_encoder30100",
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
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder30100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.destroy();
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_pass_encoder1030.setStencilReference(1);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_pass_encoder30100.setStencilReference(1);
    render_pass_encoder3090.pushDebugGroup("group_marker");
    command_encoder1100.insertDebugMarker("mymarker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder3060.insertDebugMarker("marker");
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder3080.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_pass_encoder30100.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_bundle_encoder101.popDebugGroup();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3010.popDebugGroup()
    command_encoder500.insertDebugMarker("mymarker");
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3090.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder3080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1020.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.popDebugGroup();
    const command_buffer1100 = command_encoder1100.finish();
    render_pass_encoder3080.popDebugGroup();
    device30.queue.submit([command_buffer304, command_buffer305, command_buffer307, ]);
    render_pass_encoder3060.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3090.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}