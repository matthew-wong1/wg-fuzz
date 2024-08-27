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
    
    const array0 = new Float32Array([1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -0.5, -0.75, -0.5, 0.25, -0.25, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 1.0, 1.0, 0.75, 0.5, -0.75, 1.0, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.0, 0.25, 1.0, -0.75, -1.0, -0.75, -0.75, -0.5, 0.0, 1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.75, -0.75, -1.0, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.0, -1.0, -0.75, 1.0, 0.5, ]);
    const array1 = new Float32Array([0.25, 0.0, -0.25, 1.0, 0.75, 1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 0.75, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.75, 0.75, 0.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, 0.5, 0.75, 0.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, -0.75, 0.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.5, 1.0, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, 0.0, -0.25, -1.0, 0.5, -0.25, 0.75, 0.25, -0.5, -1.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.75, -1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.75, -1.0, 0.0, 1.0, -0.75, 0.25, 1.0, -0.5, -0.75, -0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.25, -0.25, ]);
    
    const array2 = new Float32Array([0.25, -1.0, -0.75, 0.75, 0.25, -0.75, 1.0, -1.0, -0.75, 1.0, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, -0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.25, 0.75, 0.0, 0.5, 0.0, -0.75, -0.25, 1.0, -0.75, 0.0, -0.25, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, 0.0, 0.75, 0.0, -1.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.75, -0.5, -0.75, 0.75, -0.5, 0.5, -1.0, -0.75, -0.25, 1.0, 0.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 0.75, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.25, ]);
    
    const array3 = new Float32Array([0.0, 0.5, 1.0, -0.5, -0.5, -0.75, -0.5, 0.75, 0.75, 0.75, 0.75, -1.0, -1.0, -0.5, 0.0, 0.0, 0.75, 0.25, 0.5, -1.0, -0.25, 0.25, -0.75, 1.0, -1.0, 1.0, 0.5, 0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, 0.0, -1.0, 0.5, -1.0, -0.75, 0.75, 1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -0.5, 0.0, -0.25, 0.0, 0.5, 0.5, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, 1.0, 0.5, 0.0, 1.0, 1.0, 0.25, 0.75, -0.25, -0.25, -0.5, -0.25, 0.25, -0.75, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.25, 0.5, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.pushErrorScope("validation");
    
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([0.25, 0.0, -0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.75, 1.0, -1.0, 0.0, -1.0, 0.75, 0.5, -0.25, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, -0.75, 1.0, 1.0, 1.0, 0.5, 0.25, 0.5, -0.5, 0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 0.25, -1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, -1.0, 0.25, -1.0, -1.0, 0.75, 0.25, 0.25, 1.0, -0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.5, 0.5, 0.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, -0.25, 0.5, 0.25, -0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, 0.75, -0.25, 1.0, 0.5, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query100.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query000.destroy()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("validation");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.destroy();
    render_bundle_encoder200.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query101.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.5, -1.0, 0.0, 1.0, 1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, -0.5, -0.25, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 1.0, -1.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, 0.75, 1.0, 1.0, 0.25, 0.25, 0.75, 0.5, -1.0, -0.5, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, -0.25, -0.5, 0.25, 1.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, 0.25, -0.25, 0.25, 0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, -0.25, 1.0, -1.0, ]);
    
    device20.pushErrorScope("validation");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.submit([]);
    render_bundle_encoder201.insertDebugMarker("marker");
    query100.destroy()
    
    
    
    const array6 = new Float32Array([-1.0, 1.0, 1.0, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 1.0, -0.25, -1.0, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.5, -0.75, -1.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.5, 0.25, -1.0, -0.5, 0.5, -0.75, 0.75, -1.0, -0.25, -0.75, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, -0.5, -0.75, 0.75, 1.0, 0.25, -0.5, -1.0, -0.75, 1.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, -0.75, 0.25, -1.0, 0.0, 1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -0.5, -1.0, 0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 1.0, 0.0, ]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const array7 = new Float32Array([-0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, 1.0, 0.0, -0.25, 1.0, 0.25, 1.0, -0.75, 0.25, 0.75, 0.25, 0.0, -0.5, 0.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, -1.0, 0.5, 0.0, 0.75, -1.0, 0.5, 0.25, -1.0, -1.0, -0.25, -0.75, 1.0, 0.75, 0.75, 0.25, 0.0, 0.0, 0.5, 0.5, 0.25, 0.5, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, -0.25, -0.75, 0.25, 0.5, -0.5, 0.5, 0.25, 0.5, 0.75, 0.75, 0.0, -0.5, -0.75, -0.5, 0.5, -1.0, -0.25, 0.25, -0.75, 0.25, -0.75, -1.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.0, 0.25, 0.75, 0.75, 0.5, 1.0, -1.0, -0.5, -0.5, -1.0, 1.0, -0.75, -0.25, -0.25, 0.5, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query101.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    device30.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    query101.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.destroy();
    
    
    query102.destroy()
    
    
    
    query102.destroy()
    
    
    
    
    
    const array8 = new Float32Array([-0.25, 0.0, -0.5, -0.75, -0.25, -0.25, -0.75, 0.75, 0.25, 0.5, 0.5, 0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.25, -1.0, 0.5, -0.5, -0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -0.5, 0.5, 0.5, -0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 0.5, 0.0, 0.5, -0.75, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.75, 0.75, -1.0, 0.0, -0.25, -1.0, -1.0, 0.25, 1.0, 1.0, 0.5, 1.0, -0.75, -0.5, -0.5, 1.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.5, -0.25, 0.0, 0.5, -0.25, -0.5, 1.0, 0.75, 0.5, -0.5, -0.75, 0.5, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, ]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    
    query101.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    query100.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    query102.destroy()
    
    
    query102.destroy()
    
    const array9 = new Float32Array([-0.25, -1.0, -0.5, -1.0, 1.0, 1.0, -1.0, 0.25, 0.25, 0.5, -0.5, -0.5, 0.25, 0.75, 0.5, -0.5, 0.5, -0.25, 0.5, 0.75, -0.75, -0.5, 1.0, -0.25, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.25, -0.75, 0.25, -0.75, 0.5, 0.25, 0.0, 0.0, -0.75, 1.0, 0.75, 0.0, -0.25, 0.0, -0.5, 0.5, 0.0, 0.75, 1.0, 0.5, 0.75, 0.25, -1.0, -0.75, -0.75, -1.0, 0.5, 0.25, 0.25, 0.25, -1.0, 1.0, -0.75, 0.75, -0.25, 0.5, -0.5, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.75, -0.5, -0.75, 1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.5, -0.5, ]);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    query102.destroy()
    
    
    
    
    query103.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.destroy();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query100.destroy()
    
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    query102.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    query102.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device50.destroy();
    query102.destroy()
    
    
    query102.destroy()
    
    
    
    
    
    
    query102.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    render_bundle_encoder201.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    query101.destroy()
    device10.pushErrorScope("internal");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder101.popDebugGroup();
    
    
    device60.pushErrorScope("internal");
    query101.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    
    
    
    
    
    
    
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    query104.destroy()
    
    
    
    const array10 = new Float32Array([1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, 0.25, -0.75, 0.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, 0.5, 0.5, -0.75, 0.75, -1.0, 0.25, -1.0, 0.25, 1.0, 1.0, -0.25, 0.0, 0.0, -0.5, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, -0.75, 0.25, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, -0.75, 0.5, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.25, 0.5, -0.5, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -0.5, 0.5, 0.5, -0.25, -0.75, 1.0, 0.0, 1.0, 0.25, 0.75, -0.25, 0.5, 0.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, 0.0, 0.75, 0.75, ]);
    query103.destroy()
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder102.popDebugGroup();
    
    
    query600.destroy()
    query103.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    query106.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query600.destroy()
    query601.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    query600.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    query103.destroy()
    query601.destroy()
    query000.destroy()
    
    
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    const array11 = new Float32Array([0.25, 0.75, 0.5, 1.0, -1.0, -1.0, 1.0, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.75, -0.75, -1.0, -1.0, 0.25, -0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.75, -0.25, 0.0, -0.25, -1.0, -1.0, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.75, 1.0, 1.0, -0.25, 0.75, 0.25, 0.0, -0.75, -1.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.5, 0.75, -0.5, -0.25, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, -1.0, -0.75, 0.0, 1.0, 0.0, 1.0, 0.25, -0.5, -1.0, -0.5, 1.0, ]);
    
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    
    query106.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    
    render_bundle_encoder101.popDebugGroup();
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    query601.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query103.destroy()
    
    
    query105.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    device10.queue.submit([]);
    query106.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    query106.destroy()
    query602.destroy()
    query601.destroy()
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    query603.destroy()
    
    
    query603.destroy()
    query100.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device30.destroy();
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    query604.destroy()
    
    
    query108.destroy()
    
    query106.destroy()
    query602.destroy()
    query602.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    query600.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query106.destroy()
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    query602.destroy()
    
    query604.destroy()
    query103.destroy()
    
    
    
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder602.popDebugGroup();
    
    query605.destroy()
    query107.destroy()
    render_bundle_encoder601.popDebugGroup();
    
    query107.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    
    query102.destroy()
    query108.destroy()
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    query604.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query105.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query605.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query104.destroy()
    
    
    query108.destroy()
    
    device60.destroy();
    
    
    
    query107.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
}