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
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    texture100.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture101.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer301 = command_encoder301.finish();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    texture103.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture500.destroy();
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer100 = command_encoder100.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_buffer500 = command_encoder500.finish();
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder002.clearBuffer(buffer002);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder100.insertDebugMarker("marker");
    texture104.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture106.destroy();
    command_encoder001.clearBuffer(buffer002);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    command_encoder001.clearBuffer(buffer002);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    device30.queue.submit([command_buffer301, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer304 = command_encoder304.finish();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer100, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer303 = command_encoder303.finish();
    command_encoder002.clearBuffer(buffer002);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer400 = command_encoder400.finish();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    device50.queue.submit([command_buffer500, ]);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer401 = command_encoder401.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder305.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_buffer302 = command_encoder302.finish();
    
    device00.queue.submit([command_buffer003, ]);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    command_encoder001.clearBuffer(buffer002);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder502.pushDebugGroup("mygroupmarker")
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture000.destroy();
    command_encoder002.clearBuffer(buffer002);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    command_encoder001.clearBuffer(buffer002);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder004.clearBuffer(buffer002);
    const command_buffer004 = command_encoder004.finish();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    texture400.destroy();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    command_encoder501.clearBuffer(buffer503);
    
    texture300.destroy();
    
    command_encoder001.clearBuffer(buffer002);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.clearBuffer(buffer002);
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture105.destroy();
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder601.pushDebugGroup("mygroupmarker")
    render_bundle_encoder501.insertDebugMarker("marker");
    texture401.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_buffer700 = command_encoder700.finish();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_buffer503 = command_encoder503.finish();
    
    
    texture402.destroy();
    command_encoder404.pushDebugGroup("mygroupmarker")
    device00.queue.submit([command_buffer004, ]);
    const command_buffer402 = command_encoder402.finish();
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder002.clearBuffer(buffer002);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder501.clearBuffer(buffer503);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.submit([command_buffer503, ]);
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    command_encoder006.pushDebugGroup("mygroupmarker")
    device70.queue.submit([command_buffer700, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder005.clearBuffer(buffer002);
    texture107.destroy();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    texture301.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    command_encoder005.pushDebugGroup("mygroupmarker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder502.clearBuffer(buffer503);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    command_encoder001.clearBuffer(buffer002);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_buffer504 = command_encoder504.finish();
    const command_buffer102 = command_encoder102.finish();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder501.clearBuffer(buffer503);
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    texture002.destroy();
    command_encoder000.clearBuffer(buffer002);
    
    
    const command_buffer405 = command_encoder405.finish();
    command_encoder404.clearBuffer(buffer403);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder403.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_buffer701 = command_encoder701.finish();
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    
    
    
    command_encoder404.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer306 = command_encoder306.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.submit([command_buffer102, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    command_encoder501.copyBufferToBuffer(
        buffer501,
        0,
        buffer503,
        0,
        400
    );
    command_encoder000.clearBuffer(buffer002);
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    command_encoder404.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder002.clearBuffer(buffer002);
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder002.insertDebugMarker("marker");
    texture403.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder000.clearBuffer(buffer002);
    
    device40.queue.submit([command_buffer402, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer105 = command_encoder105.finish();
    const texture_view10100 = texture1010.createView({ label: "texture_view10100" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    texture601.destroy();
    texture405.destroy();
    command_encoder404.clearBuffer(buffer403);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    command_encoder002.clearBuffer(buffer002);
    
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    texture303.destroy();
    command_encoder006.clearBuffer(buffer002);
    command_encoder002.clearBuffer(buffer002);
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder006.clearBuffer(buffer002);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    texture404.destroy();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_buffer800 = command_encoder800.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const command_buffer505 = command_encoder505.finish();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder502.clearBuffer(buffer503);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder403.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder000.clearBuffer(buffer002);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    command_encoder002.clearBuffer(buffer002);
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder501.clearBuffer(buffer503);
    device40.queue.submit([command_buffer405, ]);
    device70.queue.submit([command_buffer701, ]);
    const command_buffer603 = command_encoder603.finish();
    device10.queue.submit([command_buffer105, ]);
    const command_buffer104 = command_encoder104.finish();
    device30.queue.submit([command_buffer302, command_buffer306, ]);
    device10.queue.submit([command_buffer104, ]);
    device60.queue.submit([command_buffer603, ]);
    device50.queue.submit([command_buffer505, ]);
    device80.queue.submit([command_buffer800, ]);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer303, ]);
}