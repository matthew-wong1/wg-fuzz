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
    const array0 = new Float32Array([1.0, 0.75, 0.75, -0.75, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, 0.0, -1.0, -0.25, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, 0.0, -0.75, -1.0, 0.75, 0.25, 1.0, 0.5, 1.0, 0.0, -0.5, 0.5, 0.25, 0.5, 0.0, -0.75, 0.5, 0.0, -0.25, -0.75, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -0.25, 1.0, -0.25, -1.0, -1.0, -0.5, -1.0, 1.0, -0.5, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 0.25, -1.0, 0.0, -0.25, 1.0, 0.25, 1.0, 0.25, 0.75, -0.25, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, -1.0, 0.75, 0.5, 1.0, 1.0, ]);
    const array1 = new Float32Array([0.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.25, 0.0, 0.5, 1.0, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, -0.25, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 0.0, 0.5, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.25, 0.25, -0.25, 0.0, 1.0, -1.0, 0.5, 1.0, 0.5, 0.5, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, -0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.5, 0.5, 0.0, 1.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.0, 0.75, -0.25, -0.75, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, 0.75, -0.75, -1.0, -1.0, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.5, -0.25, 0.75, -0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, -0.5, 0.0, 0.5, -0.5, 0.75, -1.0, -0.25, -1.0, -0.75, 0.5, 1.0, -0.75, 0.75, 0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, 0.5, -1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.25, 1.0, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, -0.75, -0.5, 0.75, 0.75, 0.5, -1.0, 0.0, -0.75, -0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 0.75, 1.0, -0.5, 0.0, 0.0, 0.0, 0.5, -1.0, 0.25, 0.25, -1.0, ]);
    
    
    
    const array3 = new Float32Array([-0.25, -0.5, 0.25, 0.75, -0.75, -1.0, 1.0, 0.75, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -0.25, 1.0, 0.25, 0.5, 1.0, 0.0, 0.25, -1.0, 1.0, 0.75, -0.75, 0.25, 0.5, -1.0, -1.0, 0.75, -0.5, -1.0, -1.0, 1.0, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, -1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, 0.25, -0.75, 1.0, -0.5, -0.75, 0.0, 0.25, -0.5, 0.25, -0.75, -0.75, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, ]);
    const array4 = new Float32Array([0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, 0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.25, 0.5, -1.0, -0.25, 0.0, -0.75, -0.25, 1.0, 0.5, -0.75, 0.25, 0.75, -1.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 0.75, -0.5, 0.0, -0.25, -0.5, -0.75, -0.75, 1.0, -0.25, -1.0, -0.75, 0.75, 0.5, 0.5, -0.75, 0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture000.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 0.75, 0.25, 0.5, -0.5, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, -1.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -1.0, 0.75, -0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, 0.75, 0.5, 1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, 0.75, -0.5, -0.75, -0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.25, -0.75, -0.25, 0.75, -1.0, 1.0, -0.5, -0.25, -0.25, 1.0, -1.0, 0.0, 0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 0.25, -0.25, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query000.destroy()
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device40.pushErrorScope("internal");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.submit([command_buffer100, ]);
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder001.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    command_encoder001.popDebugGroup()
    command_encoder001.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("validation");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder000.popDebugGroup()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    command_encoder002.popDebugGroup()
    query100.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    buffer102.destroy()
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
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
        occlusionQuerySet: query103
    });
    texture002.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder001.popDebugGroup()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query300.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.popDebugGroup();
    
    query100.destroy()
    device20.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query000
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder4000.setStencilReference(1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    query101.destroy()
    texture300.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture100.destroy();
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_pass_encoder1010.beginOcclusionQuery(0)
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder4000.insertDebugMarker("marker");
    texture402.destroy();
    
    device00.queue.submit([command_buffer002, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    texture403.destroy();
    
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture004.destroy();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer001.destroy()
    query400.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder4000.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query105.destroy()
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    query000.destroy()
    
    
    query400.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    
    texture003.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer103.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    
    query101.destroy()
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    texture404.destroy();
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([1.0, -0.5, 0.5, 0.25, -1.0, 0.25, -0.5, 0.5, -0.75, -1.0, -0.75, 0.5, -0.75, 0.0, 0.5, -0.25, -0.75, 1.0, 0.25, 0.0, 1.0, -0.25, 0.5, -0.75, -0.5, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, -0.5, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.75, 0.25, -0.75, 0.5, -0.25, 0.5, 0.75, -0.5, 0.0, -0.75, -0.75, 0.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -0.75, 0.5, 1.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, 0.0, -0.25, -1.0, 1.0, -1.0, 0.75, -1.0, ]);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_pass_encoder0010.setStencilReference(1);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    render_pass_encoder3000.setStencilReference(1);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array7 = new Float32Array([-0.5, 0.0, 0.75, 0.0, 1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, -0.5, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.75, 0.5, 1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, -1.0, -0.75, 0.25, 0.25, -1.0, 1.0, 0.0, 0.5, -0.75, 0.5, 0.5, -1.0, 0.75, 0.0, 0.25, -0.5, 1.0, 0.0, 0.75, -0.75, -1.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, -1.0, -0.25, -0.5, 0.0, -0.5, 0.0, -0.5, 0.0, -0.5, 0.75, 1.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 0.5, 0.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query401.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    query104.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    
    buffer106.destroy()
    buffer104.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
        occlusionQuerySet: query401
    });
    device60.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    query001.destroy()
    buffer401.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    texture304.destroy();
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    buffer000.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query300.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.executeBundles([])
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query400.destroy()
    
    
    buffer600.destroy()
    query105.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_pass_encoder3010.setStencilReference(1);
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3010.executeBundles([])
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4000.executeBundles([])
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_buffer600 = command_encoder600.finish();
    render_bundle_encoder101.popDebugGroup();
    
    query600.destroy()
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3000.setStencilReference(1);
    
    query101.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query302.destroy()
    texture305.destroy();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_pass_encoder1010.insertDebugMarker("marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setStencilReference(1);
    query302.destroy()
    
    
    texture301.destroy();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder001.popDebugGroup();
    
    query100.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    
    query301.destroy()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query105.destroy()
    query100.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    texture306.destroy();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder4000.insertDebugMarker("marker");
    
    query601.destroy()
    query002.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query002.destroy()
    query002.destroy()
    texture600.destroy();
    render_pass_encoder1020.setStencilReference(1);
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query000.destroy()
    render_pass_encoder1010.endOcclusionQuery()
}