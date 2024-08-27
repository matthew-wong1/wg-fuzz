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
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer100.destroy()
    
    device10.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.destroy();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array0 = new Float32Array([-0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 1.0, -0.25, 0.75, -1.0, -0.5, -0.25, 1.0, 1.0, -0.5, 0.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, -0.25, 0.5, 0.5, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 1.0, -0.5, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, -1.0, -0.75, -1.0, 0.25, -0.5, 1.0, 0.75, -1.0, -0.25, 0.0, -0.25, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -1.0, -0.5, 0.75, -0.75, 0.25, -1.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -1.0, -1.0, 0.5, -1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.75, 0.0, -1.0, 1.0, 0.25, -1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    device20.destroy();
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer000.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.destroy();
    const array1 = new Float32Array([0.75, 0.0, 1.0, -0.25, -0.25, -0.75, -1.0, 0.75, -0.75, -0.25, 1.0, -0.5, -1.0, -0.25, 0.0, -0.25, 0.75, 1.0, -0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, -0.75, -0.75, 0.0, 0.25, 0.25, 0.75, 0.25, 0.75, -0.25, -0.5, 1.0, -0.25, -1.0, 0.75, -0.25, -0.75, 0.0, 0.5, -0.75, 0.75, 0.5, -0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 0.0, 0.5, -1.0, 1.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.25, 0.75, 0.5, 0.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.75, -0.75, 0.0, -0.75, -1.0, 1.0, -0.25, ]);
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array2 = new Float32Array([0.0, -0.25, -0.25, 0.25, -0.75, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.25, -0.5, 0.0, 0.75, 0.5, -0.75, -0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.5, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, -0.25, 0.0, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.25, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, 0.25, -0.5, 0.25, -1.0, -0.75, -1.0, 0.75, -1.0, 0.0, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 0.25, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const array3 = new Float32Array([0.5, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.25, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.0, 1.0, 0.5, -0.25, -0.25, 1.0, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 0.25, -0.25, 0.25, 0.0, -1.0, -0.25, 0.25, 0.5, 0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.5, -1.0, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, 1.0, -1.0, -1.0, 1.0, 0.75, -0.5, -0.75, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, 0.5, -1.0, -0.5, -0.5, -0.75, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, 1.0, 0.5, -0.5, 0.0, -0.25, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer101.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.pushErrorScope("validation");
    device20.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer400.destroy()
    buffer403.destroy()
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    
    buffer401.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array4 = new Float32Array([1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.75, 0.5, 0.75, 0.75, 0.5, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.0, -0.75, -0.5, 0.25, -0.5, 1.0, 1.0, 0.75, 1.0, 0.0, -0.25, 1.0, -0.5, -0.5, 0.75, 0.25, -0.5, 0.75, 0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.5, -0.25, -1.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 0.0, -1.0, -0.25, -0.5, -0.75, -0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 0.0, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
    command_encoder400.copyBufferToBuffer(
        buffer401,
        0,
        buffer403,
        0,
        400
    );
    
    
    
    
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    buffer402.destroy()
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder4000.setStencilReference(1);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder4020.setStencilReference(1);
    device50.destroy();
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const array5 = new Float32Array([0.75, -0.25, 1.0, 0.5, 0.75, -0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 0.75, 0.5, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.5, 1.0, -0.75, 0.75, -0.5, 1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.25, 0.0, 0.25, -0.5, 0.25, -0.5, -1.0, -1.0, -0.25, 0.25, -0.75, -0.25, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, -0.5, 0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.0, -1.0, 1.0, -0.25, -0.25, -0.5, -1.0, 0.5, ]);
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const array6 = new Float32Array([1.0, -0.25, 0.75, 0.25, -0.75, -0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, 0.5, -0.25, -0.25, 1.0, -0.5, 0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 0.25, 0.25, 0.25, 0.0, 0.5, -0.25, -0.75, 0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, 1.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -0.25, -1.0, -0.25, -1.0, -0.25, 0.0, -0.75, -1.0, 0.75, -0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.5, -0.5, 0.25, 0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 0.0, 0.75, 0.75, 0.75, -1.0, 0.5, 0.5, 1.0, -0.5, 0.0, 0.25, ]);
    buffer001.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.executeBundles([])
    device00.pushErrorScope("validation");
    compute_pass_encoder4000.popDebugGroup()
    
    render_pass_encoder4010.setStencilReference(1);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query401
    });
    const texture_view4014 = texture401.createView({ label: "texture_view4014" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4001.beginOcclusionQuery(0)
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device40.destroy();
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const array7 = new Float32Array([-0.75, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, -0.75, -0.25, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.75, 0.5, -0.75, 0.25, -0.5, 0.25, 0.5, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, -0.75, -0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.25, 0.0, 0.75, -0.75, -0.75, -0.5, -0.25, 0.5, -0.75, -0.75, -1.0, -0.5, -0.75, 0.25, 0.0, 1.0, 0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -1.0, 0.75, 0.75, -0.25, 1.0, -0.25, -0.5, 0.5, -0.5, -0.5, -0.25, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.25, -0.5, 1.0, 1.0, -0.5, 0.0, 0.75, 1.0, -0.25, 0.5, 0.25, 0.5, -0.5, 0.25, -0.75, -1.0, 1.0, 1.0, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    
    device60.pushErrorScope("validation");
    render_pass_encoder4020.executeBundles([])
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer600.destroy()
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array8 = new Float32Array([0.5, 0.5, 0.5, 0.75, 0.5, -1.0, -0.75, 0.25, 0.0, 1.0, -0.75, 1.0, 0.5, -0.75, 0.5, 0.75, 1.0, 1.0, 0.0, -1.0, 0.75, -0.5, 0.25, -0.75, -0.75, 0.75, -1.0, 0.75, -0.25, 0.25, 0.0, 0.0, 1.0, 0.75, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, 1.0, -0.75, 0.25, 0.75, -1.0, 0.75, -0.25, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.5, -1.0, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, 0.5, -1.0, 0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -0.5, 0.75, 0.0, -0.25, 0.75, -1.0, 1.0, -1.0, 0.0, 0.25, 0.0, ]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    device70.pushErrorScope("validation");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer700.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array9 = new Float32Array([0.75, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, 0.25, 1.0, -0.5, 0.75, 0.0, -0.5, 1.0, 1.0, -0.75, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 0.0, 0.25, -0.25, 1.0, -0.5, 0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 0.5, 0.5, -0.75, -0.75, 1.0, -0.75, -0.5, -1.0, -0.25, 0.25, -0.75, 0.5, -0.75, -0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 1.0, 1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, -1.0, -0.75, -0.25, 0.75, 1.0, 0.0, 0.0, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -0.75, 0.25, -1.0, 0.75, -1.0, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -0.75, ]);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.destroy();
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array10 = new Float32Array([-0.25, -0.75, 0.5, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.25, -0.25, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, 1.0, 0.25, -0.75, 0.25, -0.25, -0.5, 1.0, 0.25, -0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 0.0, -0.5, -0.25, 0.75, -0.5, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, -1.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.0, -0.75, 1.0, 0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -1.0, 0.0, -1.0, -0.25, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.75, 1.0, -0.5, -1.0, -0.25, ]);
    
    
    render_pass_encoder4001.pushDebugGroup("group_marker");
    query100.destroy()
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device70.pushErrorScope("internal");
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer701.destroy()
    render_pass_encoder4030.executeBundles([])
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder701.popDebugGroup();
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    buffer702.destroy()
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.popDebugGroup();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.insertDebugMarker("marker");
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1000.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    command_encoder1000.copyTextureToBuffer(
        {
            texture: texture1000
        },
        {
            buffer: buffer1002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array11 = new Float32Array([-1.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.75, -0.5, 0.75, 0.5, 1.0, -0.5, -0.5, -0.75, 0.5, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, -1.0, 0.75, 1.0, -1.0, -1.0, 0.25, -0.25, -0.25, 0.25, 1.0, -0.5, -0.5, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -0.75, -0.5, 0.25, 0.25, 1.0, -0.75, 0.0, -1.0, 0.75, -1.0, -0.5, -1.0, -0.75, 1.0, -0.75, 0.0, 1.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -1.0, -0.5, 0.0, 0.0, -1.0, -1.0, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder800.insertDebugMarker("marker");
    buffer1002.destroy()
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.25, -0.5, -1.0, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.75, 0.25, 0.25, 0.0, 0.5, -0.25, 0.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.75, 1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.25, -0.25, 0.5, 0.75, -0.5, 0.5, -0.75, -0.25, -0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.5, 0.25, -0.5, 0.0, -1.0, 0.25, 0.5, 0.25, 1.0, -0.75, 1.0, 0.25, 0.75, -0.5, 0.75, -0.25, 1.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.5, -0.5, -0.25, -0.5, 0.0, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.75, -0.25, 0.5, 1.0, -0.75, -0.25, 0.75, ]);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query400.destroy()
    render_pass_encoder4011.setStencilReference(1);
    const array13 = new Float32Array([0.5, 0.25, 0.5, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.5, 0.5, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 0.25, -0.25, -1.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -0.25, -0.25, -0.75, 0.75, 0.5, -1.0, 1.0, 0.5, 0.0, 0.75, 0.0, 1.0, -0.75, -0.5, -1.0, 0.25, -0.5, -0.75, 0.25, 0.25, -1.0, 0.75, -0.75, 1.0, 0.0, -0.75, 1.0, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, -1.0, -1.0, 1.0, -0.75, 0.0, ]);
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    buffer801.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const command_buffer801 = command_encoder801.finish();
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder800.insertDebugMarker("marker");
    render_pass_encoder4001.executeBundles([])
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    query1000.destroy()
    
    
    
    
    const command_buffer600 = command_encoder600.finish();
    
    
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    command_encoder701.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device70.destroy();
    
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device100.pushErrorScope("internal");
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    query402.destroy()
    
    const array14 = new Float32Array([0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 0.5, -0.75, 0.75, -0.25, -0.25, -1.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.75, 1.0, -0.75, 0.5, 0.75, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.5, -0.25, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, 0.0, 0.5, 0.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -1.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, 0.0, 0.75, -0.5, 0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.25, -0.25, 0.75, 0.25, -0.75, 0.25, 1.0, 0.75, -1.0, 0.5, ]);
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    query800.destroy()
    device100.queue.writeTexture({ texture: texture1001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    device50.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const command_buffer1001 = command_encoder1001.finish();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device120.pushErrorScope("validation");
    compute_pass_encoder8000.popDebugGroup()
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}