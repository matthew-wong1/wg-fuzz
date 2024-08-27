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
    const array0 = new Float32Array([0.25, -0.5, -1.0, 0.5, -0.5, 0.25, -0.5, -1.0, -0.25, 0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.75, -0.5, 0.5, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, 0.0, -0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.75, 0.5, -0.5, -1.0, 0.75, -0.75, 0.5, -1.0, -0.75, 1.0, 0.5, 0.5, 0.0, -0.75, -0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.75, 0.0, -0.25, -1.0, 0.0, -0.5, 0.0, 0.75, -0.75, 1.0, 0.25, -0.25, -1.0, 1.0, -0.5, 0.0, -1.0, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const array1 = new Float32Array([0.0, 1.0, 1.0, 1.0, 0.25, 1.0, -0.25, 0.75, -1.0, -0.25, 0.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.25, -1.0, -1.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, -0.75, 0.5, -0.25, -0.75, 0.75, 1.0, -1.0, 0.75, -1.0, 0.25, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, -0.75, 0.0, -1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, 0.0, -0.25, -0.5, -0.25, 0.75, 0.5, -0.75, -0.5, -0.5, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, 1.0, -1.0, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.75, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 0.75, 0.75, -0.25, 1.0, -1.0, 1.0, 0.25, 0.75, 0.75, -1.0, -1.0, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    device30.pushErrorScope("validation");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.popDebugGroup();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    buffer100.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query101.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query101.destroy()
    query102.destroy()
    
    buffer101.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer103.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.destroy();
    device20.destroy();
    
    command_encoder100.popDebugGroup()
    query102.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    query100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query100.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array2 = new Float32Array([-0.5, 1.0, -0.25, 0.75, 1.0, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, 1.0, 0.25, 0.25, 0.25, -0.5, -0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.5, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, -0.5, -1.0, 0.0, 0.75, -0.75, -1.0, -0.25, -0.25, 0.25, 0.5, 0.0, -1.0, 1.0, 1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.25, 1.0, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, 0.25, 0.75, 0.5, 0.25, 0.25, -1.0, -0.5, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.5, -1.0, -0.5, 0.0, 0.0, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    buffer102.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const command_buffer101 = command_encoder101.finish();
    device10.destroy();
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query300.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query102.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const command_buffer500 = command_encoder500.finish();
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_buffer501 = command_encoder501.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.submit([command_buffer500, ]);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    
    
    const array3 = new Float32Array([-0.25, 0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.5, 0.75, 0.75, -0.25, 0.75, 0.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, -0.25, 0.0, -0.75, -0.75, 0.75, -0.5, -1.0, 0.25, -0.75, -0.5, 1.0, 0.75, 0.5, -1.0, -0.5, -0.25, 0.25, 0.5, -0.25, 0.5, 0.25, 0.75, -0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, 0.25, 0.0, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.75, 1.0, 1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.5, 0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.25, 0.0, -0.75, 0.0, -0.5, -0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device50.pushErrorScope("out-of-memory");
    device20.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer501.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder501.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query400.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    buffer600.destroy()
    
    device40.destroy();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device60.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device80.destroy();
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    
    buffer502.destroy()
    const array4 = new Float32Array([0.75, -0.25, -0.25, -0.75, -0.5, 0.75, -1.0, -0.5, 0.75, 0.5, -1.0, 0.75, -0.75, -0.25, 0.5, 0.5, 0.25, 0.25, 0.0, 1.0, -0.25, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -1.0, -0.5, -0.75, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, -0.5, -0.75, -0.25, 1.0, -1.0, -0.75, 1.0, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, -0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, 1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -1.0, -0.5, 1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.5, 0.5, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder700.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder500.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    query500.destroy()
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    buffer502.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    
    device90.pushErrorScope("internal");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer901.destroy()
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const array5 = new Float32Array([1.0, 0.75, 1.0, 0.75, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, -0.25, -1.0, 0.0, 0.25, -1.0, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 0.25, -0.75, -0.25, 0.0, -1.0, -0.5, -0.75, 0.5, 0.0, -0.75, -0.25, -0.75, -0.25, 1.0, -0.5, -0.25, 0.75, -0.25, -1.0, -0.75, -0.25, -0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 0.0, 1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, 0.75, -0.5, -1.0, 1.0, -0.75, 0.25, -1.0, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    render_bundle_encoder500.popDebugGroup();
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    query501.destroy()
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    buffer503.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    
    const command_buffer701 = command_encoder701.finish();
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer501.destroy()
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device50.queue.submit([command_buffer500, ]);
    buffer900.destroy()
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    
    query501.destroy()
    
    
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    query300.destroy()
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const array6 = new Float32Array([-1.0, -1.0, 0.25, -1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -1.0, 0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 1.0, -0.25, 1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.25, -0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -0.25, 0.0, 0.25, -0.5, 0.75, -1.0, -0.5, 0.75, 1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.75, -0.25, 1.0, 0.0, -0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.25, 1.0, 0.75, -1.0, 0.25, -0.5, 0.75, 0.0, -0.75, 0.75, -0.5, -1.0, 0.25, -1.0, -0.5, -0.75, 0.25, ]);
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder901.insertDebugMarker("mymarker");
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    command_encoder502.insertDebugMarker("mymarker");
    query501.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    command_encoder502.copyBufferToBuffer(
        buffer501,
        0,
        buffer504,
        0,
        400
    );
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    device50.queue.writeBuffer(buffer504, 0, array4, 0, array4.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device70.queue.submit([command_buffer701, ]);
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query700.destroy()
    render_bundle_encoder900.popDebugGroup();
    
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    
    compute_pass_encoder7000.popDebugGroup()
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder501.popDebugGroup();
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer504, 0, array5, 0, array5.length);
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    command_encoder901.insertDebugMarker("mymarker");
    query500.destroy()
    
    query700.destroy()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    
    
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    device50.queue.writeBuffer(buffer504, 0, array5, 0, array5.length);
    compute_pass_encoder9000.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query500.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    command_encoder901.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer504, 0, array4, 0, array4.length);
    const compute_pass_encoder9001 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9001" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    query700.destroy()
    
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    compute_pass_encoder9010.insertDebugMarker("marker")
    buffer800.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query400.destroy()
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query900.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    const command_buffer902 = command_encoder902.finish();
    compute_pass_encoder5030.popDebugGroup()
    command_encoder702.popDebugGroup()
    const command_buffer801 = command_encoder801.finish();
    device90.queue.submit([command_buffer902, ]);
    const command_buffer903 = command_encoder903.finish();
    device90.queue.submit([command_buffer903, ]);
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer702, ]);
    command_encoder901.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    const command_buffer901 = command_encoder901.finish();
    compute_pass_encoder9001.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([]);
    device90.queue.submit([command_buffer903, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder9001.popDebugGroup()
    const command_buffer503 = command_encoder503.finish();
    const command_buffer600 = command_encoder600.finish();
    device50.queue.submit([command_buffer503, ]);
    command_encoder700.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device70.queue.submit([command_buffer701, ]);
    device90.queue.submit([command_buffer901, ]);
    device50.queue.submit([command_buffer501, ]);
    device100.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device90.queue.submit([command_buffer901, ]);
}