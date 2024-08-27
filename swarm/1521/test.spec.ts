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
    const array0 = new Float32Array([0.0, 1.0, 0.5, 0.5, -0.75, -1.0, -0.5, 0.75, -0.75, 0.0, -0.75, 0.5, 1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 0.25, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 0.5, 0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, 0.75, 0.75, 0.0, -0.25, 0.25, 0.0, 0.75, -0.25, -1.0, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.5, -0.5, -0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 0.75, -0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.25, 0.5, 0.0, -0.75, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 0.5, -0.25, -1.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.25, -0.25, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device10.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    
    device00.queue.submit([command_buffer000, ]);
    
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array1 = new Float32Array([-0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, 1.0, -0.5, 0.0, -0.75, -0.25, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.25, -1.0, 0.25, 0.75, -0.75, 0.5, -0.25, 1.0, -0.5, -0.75, 1.0, -1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.25, -0.75, -0.25, -0.75, 1.0, 0.0, -0.75, 0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 0.25, -1.0, -0.25, -0.5, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.0, 0.75, -0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -0.25, 1.0, 0.75, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([0.75, 0.25, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.5, 0.75, -0.75, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -0.25, -0.25, 0.75, -1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, -0.75, 0.5, -0.25, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -0.5, -1.0, -1.0, 0.5, 0.25, -0.25, 0.0, -0.75, 0.75, 0.75, 0.25, -0.25, -0.75, -0.25, 0.75, 0.25, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.destroy();
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const array3 = new Float32Array([0.5, 0.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 1.0, 0.25, -0.5, 0.0, 1.0, -0.75, 1.0, 0.5, 1.0, 0.0, 0.75, 0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.75, 0.0, -0.5, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, 1.0, 0.25, -0.75, 0.0, 0.75, 1.0, -0.5, 1.0, 0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.5, 0.0, 0.5, -1.0, -0.75, 0.25, -0.75, -0.5, 0.5, -0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, 0.75, -0.5, ]);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    query301.destroy()
    query301.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    query300.destroy()
    query301.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query500.destroy()
    
    device30.destroy();
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    device50.queue.submit([]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query500.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.25, -1.0, -0.5, 0.75, 0.5, 0.75, -0.75, -1.0, -0.5, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, 0.0, 0.0, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.25, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, -1.0, 0.5, 0.75, 0.5, -1.0, -1.0, 0.75, -0.25, -0.25, 0.25, 0.0, 0.75, 1.0, 1.0, 0.0, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, -0.75, -0.5, -0.25, 0.0, -1.0, 0.5, -0.25, 0.25, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.75, 0.0, ]);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const array5 = new Float32Array([0.5, -0.25, -0.25, -0.5, 1.0, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.5, 1.0, -0.5, -0.75, 0.75, 0.25, -1.0, 0.25, -0.25, 1.0, -1.0, -1.0, -0.75, 0.75, 0.25, 0.25, 1.0, 0.75, 0.75, 1.0, 0.5, -0.75, -1.0, 0.0, 1.0, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 1.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -0.25, 1.0, 0.5, 0.75, 0.25, 0.25, 0.25, 0.5, 0.75, 0.25, 0.0, 0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -1.0, -0.75, 0.5, -0.25, 1.0, -1.0, -0.75, -0.25, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const array6 = new Float32Array([-1.0, -0.25, 0.25, 0.25, -0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, 1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 1.0, 0.25, -0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -0.5, -0.5, 1.0, 0.25, 0.0, 0.5, -0.25, 0.5, -0.25, 0.25, -0.75, 0.25, 0.0, -0.75, 1.0, -0.75, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, 0.25, 0.0, -0.75, -0.25, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 0.25, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -0.5, 0.0, -1.0, 0.25, 1.0, 0.75, -1.0, 1.0, 0.75, 0.0, -0.5, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query500.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query600.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    compute_pass_encoder5000.popDebugGroup()
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    command_encoder601.insertDebugMarker("mymarker");
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder5010.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query600.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const array7 = new Float32Array([-1.0, 0.25, 0.5, 0.0, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, -0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, 1.0, -1.0, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.5, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.5, -1.0, -0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 0.5, 1.0, -1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.25, -1.0, 0.25, 1.0, -0.75, 0.25, -1.0, -0.5, -1.0, 0.5, -0.75, 0.25, 0.75, -0.5, 1.0, 0.75, 0.75, -0.75, 0.25, 0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -0.75, 0.5, -0.25, ]);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    command_encoder602.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([0.25, 0.75, -0.5, 0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, -0.5, 0.75, 1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.75, -0.75, 0.5, 0.0, 1.0, -0.25, -1.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, 0.0, -1.0, 1.0, -0.75, -0.25, -0.5, 0.25, 0.5, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.25, -0.5, -1.0, 0.5, 0.25, -0.25, 0.0, -0.5, 0.0, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.0, 0.5, 0.0, ]);
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder601.clearBuffer(buffer600);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    command_encoder601.insertDebugMarker("mymarker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device70.destroy();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query500.destroy()
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const array9 = new Float32Array([0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, 0.5, 0.75, 0.25, -1.0, -1.0, -0.75, -0.25, -0.5, -0.25, -0.75, 0.0, -1.0, 0.25, 0.75, -0.25, -0.75, 0.0, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, 0.0, -1.0, 0.5, -0.25, 1.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.25, 1.0, -1.0, 1.0, -1.0, -0.75, -0.5, -0.25, 0.75, -0.25, 0.25, 0.75, 1.0, -0.75, -1.0, 0.5, 0.25, -0.25, -0.5, -0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.5, 1.0, -1.0, 0.75, -0.25, -1.0, -0.25, -1.0, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.75, 1.0, -0.25, -0.75, 0.25, 0.75, -0.5, -0.5, 0.25, 0.75, ]);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    
    command_encoder600.clearBuffer(buffer601);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.popDebugGroup()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    command_encoder601.insertDebugMarker("mymarker");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder600.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query501.destroy()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const array10 = new Float32Array([-0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, -0.25, -0.25, 0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, 0.25, 1.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.75, -1.0, -0.5, -0.5, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -0.75, 0.0, 1.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 0.25, -0.5, -0.75, 0.5, -0.25, 1.0, -0.5, 0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.25, -0.5, -1.0, -0.25, -0.75, -0.75, -0.25, ]);
    
    compute_pass_encoder5010.popDebugGroup()
    device60.queue.writeBuffer(buffer601, 0, array10, 0, array10.length);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    query500.destroy()
    command_encoder602.popDebugGroup()
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    command_encoder601.copyBufferToBuffer(
        buffer601,
        0,
        buffer601,
        0,
        400
    );
    command_encoder601.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer601, 0, array10, 0, array10.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    compute_pass_encoder6020.popDebugGroup()
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    query500.destroy()
    
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    command_encoder601.resolveQuerySet(
        query603,
        0,
        32,
        buffer600,
        0
    )
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device20.destroy();
    compute_pass_encoder5000.popDebugGroup()
    
    
    command_encoder602.insertDebugMarker("mymarker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    query603.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const command_buffer603 = command_encoder603.finish();
    
    
    
    
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    command_encoder500.insertDebugMarker("mymarker");
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    query502.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array11 = new Float32Array([0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, -1.0, 0.0, -0.5, 0.0, -0.75, -0.25, 0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, 1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.75, 1.0, -0.5, 0.25, -0.25, -0.75, -0.5, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, -1.0, -1.0, -0.75, -0.25, 1.0, 0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, 1.0, -0.5, 0.75, -0.75, 0.25, -1.0, -1.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, -0.25, 0.25, -0.75, 0.75, 1.0, -0.5, 0.25, -0.25, -0.5, -0.75, -1.0, -0.25, 0.5, 1.0, -0.25, 1.0, -1.0, ]);
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const command_buffer001 = command_encoder001.finish();
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    query604.destroy()
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    command_encoder502.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    render_bundle_encoder602.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    
    
    query502.destroy()
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    const command_buffer502 = command_encoder502.finish();
    
    query602.destroy()
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    query605.destroy()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    query603.destroy()
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer302, 0, array10, 0, array10.length);
    compute_pass_encoder6010.popDebugGroup()
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    query604.destroy()
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    
    
    
    device80.destroy();
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    
    command_encoder604.clearBuffer(buffer601);
    const command_buffer602 = command_encoder602.finish();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder604.clearBuffer(buffer600);
    
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    command_encoder604.resolveQuerySet(
        query602,
        0,
        32,
        buffer602,
        0
    )
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    query606.destroy()
    query800.destroy()
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    command_encoder600.clearBuffer(buffer601);
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    command_encoder604.clearBuffer(buffer601);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    
    
    query501.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    query401.destroy()
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    
    
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device60.queue.submit([command_buffer603, ]);
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder5010.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder6010.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer503, ]);
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    command_encoder501.popDebugGroup()
}