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
    
    const array0 = new Float32Array([0.75, 0.0, -0.75, 0.25, -0.75, 1.0, 0.25, 0.5, -0.5, 0.25, -0.75, -0.5, -0.75, 0.25, 1.0, 0.5, 0.5, -0.5, -0.5, 0.25, 0.75, -1.0, -0.5, -0.25, -0.5, -0.25, -0.25, 0.5, -1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.0, -0.5, 0.0, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.75, -0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.0, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -0.25, 1.0, 0.5, 0.5, -0.25, 0.5, -0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.5, 1.0, 0.0, 0.25, 0.25, 1.0, -0.25, -0.75, 0.0, ]);
    const array1 = new Float32Array([0.25, 0.0, 0.5, 0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 0.5, 0.5, -0.5, 0.75, 1.0, -1.0, 1.0, 0.75, -1.0, 1.0, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.25, 0.25, 1.0, 0.75, 0.5, 0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 0.5, -0.75, -0.25, -0.25, 0.25, -0.75, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, 0.5, 0.25, -1.0, -0.5, -0.25, -0.5, 0.0, -0.75, -0.5, -1.0, -0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, -0.5, 1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder400.insertDebugMarker("mymarker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer400 = command_encoder400.finish();
    device00.pushErrorScope("validation");
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_buffer401 = command_encoder401.finish();
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    query002.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    query401.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query500.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_buffer200 = command_encoder200.finish();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.insertDebugMarker("mymarker");
    device40.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query501.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    device00.pushErrorScope("validation");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    texture400.destroy();
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    texture500.destroy();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    query001.destroy()
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const array2 = new Float32Array([0.5, -0.25, -0.25, -0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, -1.0, -1.0, 0.75, -1.0, -1.0, -0.75, -0.25, -1.0, -1.0, -0.25, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.5, -0.25, -0.25, -1.0, 0.0, -0.5, -0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.0, -0.75, -0.25, -0.75, 0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 0.75, 0.75, 1.0, -0.75, 0.0, -0.75, 1.0, 0.25, -0.75, 1.0, 0.0, 1.0, -0.25, 0.5, 0.5, -1.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.5, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query400.destroy()
    query401.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    render_bundle_encoder000.popDebugGroup();
    query004.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    command_encoder502.insertDebugMarker("mymarker");
    query002.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    texture401.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    query504.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const command_buffer402 = command_encoder402.finish();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query505.destroy()
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query002.destroy()
    
    query401.destroy()
    
    
    
    query501.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query402.destroy()
    
    texture000.destroy();
    const command_buffer501 = command_encoder501.finish();
    command_encoder500.insertDebugMarker("mymarker");
    
    texture200.destroy();
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const array3 = new Float32Array([0.0, 0.5, -1.0, 0.25, 0.25, 0.75, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 0.25, 0.5, 0.75, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, 0.5, 0.25, 0.0, 1.0, -0.75, 0.75, 1.0, -0.5, 0.75, 0.25, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 1.0, 0.25, -1.0, 0.0, 0.75, 0.75, -0.5, 0.25, -0.75, -0.25, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.75, -0.5, -1.0, -0.75, 0.0, -0.75, -1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.5, 0.0, -0.5, 0.75, 0.0, 0.75, 0.75, 0.5, -0.5, 0.0, ]);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query200.destroy()
    query505.destroy()
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.submit([command_buffer200, ]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query400.destroy()
    
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query200.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query002.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query003.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    query000.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_buffer503 = command_encoder503.finish();
    buffer001.destroy()
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const command_buffer502 = command_encoder502.finish();
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    query201.destroy()
    command_encoder405.insertDebugMarker("mymarker");
    
    query506.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query401.destroy()
    
    
    device00.queue.submit([command_buffer000, ]);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    query402.destroy()
    
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    
    render_bundle_encoder001.popDebugGroup();
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    command_encoder500.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    command_encoder500.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    query000.destroy()
    
    
    
    device00.destroy();
    
    
    
    query506.destroy()
    const command_buffer403 = command_encoder403.finish();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    texture501.destroy();
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder504.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    query503.destroy()
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    query501.destroy()
    command_encoder505.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    command_encoder505.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    command_encoder405.insertDebugMarker("mymarker");
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query506.destroy()
    command_encoder504.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    query402.destroy()
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder404.insertDebugMarker("mymarker");
    
    
    
    
    device60.pushErrorScope("internal");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder505.resolveQuerySet(
        query507,
        0,
        32,
        buffer500,
        0
    )
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture502.destroy();
    
    command_encoder504.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    command_encoder505.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder501.popDebugGroup();
    const command_buffer504 = command_encoder504.finish();
    command_encoder505.resolveQuerySet(
        query506,
        0,
        32,
        buffer500,
        0
    )
    buffer200.destroy()
    query506.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer500.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const command_buffer202 = command_encoder202.finish();
    
    command_encoder505.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_buffer500 = command_encoder500.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query507.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    
    query201.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    query201.destroy()
    device40.queue.submit([command_buffer403, ]);
    const array4 = new Float32Array([1.0, -0.75, 0.0, -1.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, -1.0, 1.0, -0.5, -0.75, 0.25, 0.0, 0.5, 0.75, 1.0, 0.0, 0.5, 0.25, 0.5, -1.0, -0.5, 0.25, -0.25, 1.0, 1.0, -0.5, 0.0, 1.0, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, -0.5, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 1.0, -1.0, 1.0, -0.75, 0.75, -0.5, 0.5, -0.75, 0.0, 0.0, 1.0, 0.0, 1.0, -0.75, -1.0, 0.5, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, 0.5, -0.25, -0.5, -0.75, -0.5, -0.25, -0.25, -0.75, -1.0, 1.0, -0.75, 0.25, 0.5, -0.75, 0.0, 0.0, -1.0, -1.0, -0.25, -0.25, -1.0, 0.5, -1.0, -1.0, -1.0, -0.75, ]);
    render_bundle_encoder500.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer600.destroy()
    
    
    device70.destroy();
    command_encoder505.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    
    query402.destroy()
    
    command_encoder505.resolveQuerySet(
        query507,
        0,
        32,
        buffer500,
        0
    )
    command_encoder505.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    query505.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    command_encoder505.resolveQuerySet(
        query507,
        0,
        32,
        buffer500,
        0
    )
    command_encoder506.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    query402.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const query508 = device50.createQuerySet({
        label: "query508",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    command_encoder505.resolveQuerySet(
        query508,
        0,
        32,
        buffer500,
        0
    )
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder505.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder505.resolveQuerySet(
        query507,
        0,
        32,
        buffer500,
        0
    )
    command_encoder404.insertDebugMarker("mymarker");
    
    command_encoder506.resolveQuerySet(
        query508,
        0,
        32,
        buffer500,
        0
    )
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module509.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    
    const command_buffer405 = command_encoder405.finish();
    command_encoder507.resolveQuerySet(
        query508,
        0,
        32,
        buffer500,
        0
    )
    command_encoder506.resolveQuerySet(
        query505,
        0,
        32,
        buffer500,
        0
    )
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder507.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    command_encoder505.insertDebugMarker("mymarker");
    command_encoder507.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    command_encoder404.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    
    query502.destroy()
    command_encoder505.resolveQuerySet(
        query508,
        0,
        32,
        buffer500,
        0
    )
    command_encoder404.insertDebugMarker("mymarker");
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    device50.pushErrorScope("internal");
    command_encoder404.insertDebugMarker("mymarker");
    const command_buffer203 = command_encoder203.finish();
    command_encoder404.insertDebugMarker("mymarker");
    const query509 = device50.createQuerySet({
        label: "query509",
        type: "occlusion",
        count: 32,
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    command_encoder507.insertDebugMarker("mymarker");
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    command_encoder505.insertDebugMarker("mymarker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    command_encoder505.insertDebugMarker("mymarker");
    
    const command_buffer507 = command_encoder507.finish();
    
    query508.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    texture600.destroy();
    query201.destroy()
    command_encoder506.resolveQuerySet(
        query505,
        0,
        32,
        buffer500,
        0
    )
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer601 = command_encoder601.finish();
    render_bundle_encoder401.popDebugGroup();
    query507.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder505.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    command_encoder505.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder505.resolveQuerySet(
        query506,
        0,
        32,
        buffer500,
        0
    )
    device60.queue.submit([command_buffer601, ]);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    command_encoder505.insertDebugMarker("mymarker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder506.resolveQuerySet(
        query508,
        0,
        32,
        buffer500,
        0
    )
    
    device40.pushErrorScope("out-of-memory");
    
    
    const command_buffer205 = command_encoder205.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer404 = command_encoder404.finish();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer506 = command_encoder506.finish();
    const command_buffer600 = command_encoder600.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer506, command_buffer507, ]);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer505 = command_encoder505.finish();
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device50.queue.submit([command_buffer504, command_buffer505, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
}