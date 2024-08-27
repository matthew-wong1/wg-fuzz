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
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    query001.destroy()
    texture100.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder000.popDebugGroup()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.popDebugGroup();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.pushErrorScope("out-of-memory");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    buffer100.destroy()
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer001.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture100.destroy();
    device00.pushErrorScope("out-of-memory");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query003.destroy()
    query002.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder000.clearBuffer(buffer001);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device40.queue.submit([]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.pushErrorScope("validation");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    buffer300.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query001.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder101.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query102.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query002.destroy()
    
    texture300.destroy();
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder002.pushDebugGroup("mygroupmarker")
    query300.destroy()
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.pushErrorScope("out-of-memory");
    
    command_encoder001.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer400.destroy()
    query300.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.popDebugGroup()
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    device00.pushErrorScope("validation");
    
    query400.destroy()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer401.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer101.destroy()
    query001.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture000.destroy();
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    query004.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    query400.destroy()
    texture301.destroy();
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    
    query001.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query402.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder101.popDebugGroup();
    buffer301.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.popDebugGroup();
    command_encoder003.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query400.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture400.destroy();
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder103.pushDebugGroup("group_marker");
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    device20.pushErrorScope("validation");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder100.popDebugGroup();
    
    query002.destroy()
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    query003.destroy()
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture000.destroy();
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    query102.destroy()
    command_encoder003.clearBuffer(buffer000);
    command_encoder000.clearBuffer(buffer002);
    command_encoder100.popDebugGroup()
    query402.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture300
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
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder301.popDebugGroup()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder100.copyTextureToTexture(
        {
            texture: texture102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder103.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder103.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.clearBuffer(buffer002);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder002.insertDebugMarker("mymarker");
    
    
    texture200.destroy();
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder001.popDebugGroup();
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    command_encoder003.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder101.insertDebugMarker("mymarker");
    
    query403.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    command_encoder000.clearBuffer(buffer002);
    buffer101.destroy()
    command_encoder004.clearBuffer(buffer002);
    device00.pushErrorScope("internal");
    render_bundle_encoder401.popDebugGroup();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query000.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder000.popDebugGroup()
    
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    command_encoder004.insertDebugMarker("mymarker");
    query000.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture100.destroy();
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder000.clearBuffer(buffer002);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    device40.queue.submit([]);
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("out-of-memory");
    command_encoder102.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query300.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    command_encoder101.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query401.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
    
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder301.popDebugGroup()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder100.popDebugGroup();
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    query300.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder002.clearBuffer(buffer002);
    query301.destroy()
    texture102.destroy();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query102.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder102.popDebugGroup();
    device30.pushErrorScope("out-of-memory");
    query103.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder302.copyTextureToBuffer(
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
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    device00.pushErrorScope("out-of-memory");
    command_encoder103.insertDebugMarker("mymarker");
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder303.insertDebugMarker("mymarker");
    
    command_encoder004.popDebugGroup()
    buffer303.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    command_encoder001.clearBuffer(buffer003);
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer303,
        0,
        400
    );
    render_bundle_encoder302.insertDebugMarker("marker");
    device10.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.popDebugGroup()
    command_encoder200.popDebugGroup()
    device00.queue.submit([]);
    command_encoder002.popDebugGroup()
    command_encoder103.popDebugGroup()
    command_encoder100.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}