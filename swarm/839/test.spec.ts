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
    
    
    
    
    
    
    
    const array0 = new Float32Array([0.25, -0.75, 0.5, -0.75, 0.0, -0.25, 0.5, 1.0, -0.75, -0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, 0.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.0, -0.5, 0.25, -0.75, -0.5, 0.5, -0.5, 0.75, 0.5, -0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, -1.0, -0.5, 0.0, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, -0.25, -1.0, 0.75, 0.75, -1.0, 1.0, 0.25, -0.5, 0.25, 1.0, -1.0, 0.0, -1.0, -0.75, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, -0.5, -1.0, 0.75, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("internal");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    texture100.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture200.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const array1 = new Float32Array([0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, -0.75, -1.0, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, -1.0, 0.0, 0.0, 1.0, 0.25, -0.5, -0.75, -1.0, -1.0, -0.25, 0.0, -0.5, 0.5, -0.5, -1.0, 0.5, -0.25, -0.25, 0.25, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, -0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 0.25, -1.0, -0.75, -1.0, 0.5, 1.0, -0.75, 1.0, 0.5, 0.5, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 1.0, 0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, 0.75, -1.0, -0.25, 0.0, -0.75, 0.25, -0.25, ]);
    device30.destroy();
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device10.destroy();
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.0, 0.5, -0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 0.75, -0.25, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, 0.25, -0.5, -0.75, -0.5, 1.0, -0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.25, -0.25, -0.25, -0.25, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.0, 1.0, -0.75, -0.5, 0.0, 0.5, 1.0, -0.75, 1.0, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, -0.5, 0.5, -1.0, 0.75, 1.0, 0.5, 0.25, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, -1.0, 0.25, -0.75, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.0, -0.25, 1.0, 0.0, 0.25, 0.5, ]);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    const array3 = new Float32Array([-0.75, -0.75, 0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.0, -0.25, -1.0, -0.5, -1.0, 1.0, 1.0, 1.0, 0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, -1.0, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 0.25, 1.0, -0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 1.0, -0.5, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 1.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.75, -0.25, 0.25, 0.75, -0.5, -0.25, 0.5, 1.0, -0.5, 0.75, 1.0, 0.0, -0.75, 0.0, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 0.0, 1.0, ]);
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.pushErrorScope("validation");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    command_encoder201.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder202.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer202.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer201.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    command_encoder200.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder5000.beginOcclusionQuery(0)
    
    buffer200.destroy()
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer501.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture500.destroy();
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.pushErrorScope("internal");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    const array4 = new Float32Array([1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, -0.75, 0.5, -0.75, -1.0, 1.0, 0.5, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 1.0, 1.0, -0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, -0.5, -1.0, 0.0, 1.0, 0.5, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -0.25, 0.0, -0.5, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 0.75, 0.0, -0.25, -0.5, 0.25, 1.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.5, 0.5, 0.5, 0.25, 0.0, -0.5, 0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 0.25, 0.25, 0.0, 1.0, -0.5, 0.75, 0.75, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder204.insertDebugMarker("mymarker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder5000.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    command_encoder203.popDebugGroup()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    device40.destroy();
    command_encoder205.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([1.0, 0.25, 0.5, 0.25, 1.0, 0.0, 0.75, -0.75, 0.25, 0.75, -0.25, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 0.25, 0.5, 0.5, 0.25, 0.25, 0.25, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 0.0, -0.25, 0.25, 1.0, -1.0, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.5, -0.75, 0.0, 0.25, -0.75, 0.5, -0.25, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 1.0, 0.75, -0.75, 1.0, 0.25, 0.75, 0.5, 0.0, -0.25, -1.0, -1.0, -1.0, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -1.0, -0.75, -0.25, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, -0.5, 0.0, 0.75, 0.5, 1.0, ]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder5000.setStencilReference(1);
    
    command_encoder202.insertDebugMarker("mymarker");
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    render_pass_encoder5000.endOcclusionQuery()
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder5000.beginOcclusionQuery(1)
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder5000.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    command_encoder203.popDebugGroup()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder205.insertDebugMarker("mymarker");
    render_pass_encoder5000.endOcclusionQuery()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder5000.beginOcclusionQuery(2)
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder201.popDebugGroup()
    buffer700.destroy()
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer800.destroy()
    
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.popDebugGroup()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    render_pass_encoder5000.executeBundles([])
    command_encoder701.pushDebugGroup("mygroupmarker")
    render_bundle_encoder602.pushDebugGroup("group_marker");
    command_encoder204.popDebugGroup()
    
    command_encoder205.popDebugGroup()
    device80.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_bundle_encoder600.popDebugGroup();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    command_encoder202.insertDebugMarker("mymarker");
    render_pass_encoder5000.endOcclusionQuery()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7001,
            },
        ],
        occlusionQuerySet: query700
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    
    
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
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
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder501.insertDebugMarker("mymarker");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder7010.executeBundles([])
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    buffer600.destroy()
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    texture501.destroy();
    buffer203.destroy()
    render_pass_encoder7020.setStencilReference(1);
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder205.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder7010.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder7010.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder7020.executeBundles([])
    render_pass_encoder7020.executeBundles([])
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder7020.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
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
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder7010.pushDebugGroup("group_marker");
    
    render_pass_encoder5000.beginOcclusionQuery(3)
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7010.popDebugGroup();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder201.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5000.endOcclusionQuery()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder5010.beginOcclusionQuery(4)
    render_pass_encoder7010.executeBundles([])
    render_pass_encoder7020.setStencilReference(1);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    render_pass_encoder7010.insertDebugMarker("marker");
    render_pass_encoder7020.executeBundles([])
    render_pass_encoder7030.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder7030.executeBundles([])
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder7030.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder7010.setStencilReference(1);
    const render_pass_encoder7040 = command_encoder704.beginRenderPass({
        label: "render_pass_encoder7040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array6 = new Float32Array([1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 0.75, 1.0, 1.0, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.5, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 1.0, 0.25, 0.5, 0.5, 0.75, 1.0, -0.5, 0.75, -1.0, 0.25, -0.5, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 0.75, 0.75, 1.0, -0.5, -0.25, 0.0, -0.5, -0.25, -1.0, 0.75, -1.0, 0.25, 0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, -0.75, -1.0, 1.0, 0.5, 1.0, -0.25, 0.75, -1.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, -0.25, 0.25, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, ]);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_pass_encoder7000.beginOcclusionQuery(0)
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder7040.pushDebugGroup("group_marker");
    render_pass_encoder5000.beginOcclusionQuery(5)
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder7040.setStencilReference(1);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    render_pass_encoder7030.beginOcclusionQuery(1)
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder7030.setStencilReference(1);
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    render_pass_encoder7030.setStencilReference(1);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    render_pass_encoder7030.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_pass_encoder7040.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder7040.beginOcclusionQuery(2)
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    render_pass_encoder5020.pushDebugGroup("group_marker");
    texture701.destroy();
    render_pass_encoder5020.executeBundles([])
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    render_pass_encoder7010.pushDebugGroup("group_marker");
    
    
    buffer701.destroy()
    render_pass_encoder7030.setStencilReference(1);
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5020.executeBundles([])
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder602.popDebugGroup();
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder5020.setStencilReference(1);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer207,
        0
    )
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    texture702.destroy();
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    render_pass_encoder7000.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    buffer504.destroy()
    render_pass_encoder5020.popDebugGroup();
    command_encoder600.popDebugGroup()
    command_encoder200.popDebugGroup()
    render_pass_encoder7040.popDebugGroup();
    command_encoder204.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder7030.endOcclusionQuery()
    render_pass_encoder7000.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder7040.endOcclusionQuery()
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder5010.endOcclusionQuery()
    command_encoder202.popDebugGroup()
}