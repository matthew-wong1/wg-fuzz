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
    const array0 = new Float32Array([0.5, -0.5, -0.75, -0.75, 0.75, 0.0, 0.25, -0.25, -0.5, -0.25, -0.5, -1.0, 1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, -0.75, 0.25, 0.0, 0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 0.75, 1.0, 0.25, 1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.5, 0.75, -0.75, 1.0, 0.5, 1.0, -1.0, -0.75, 0.5, -0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, -0.25, 1.0, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 0.75, 1.0, 0.25, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const array1 = new Float32Array([0.5, -0.75, -0.25, 0.75, 1.0, 0.5, 1.0, -0.5, 0.25, 0.0, 0.25, -0.25, -0.5, -0.5, -0.75, 0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -1.0, -1.0, -0.75, 0.75, 0.75, 0.25, -0.25, 0.0, 1.0, 0.75, 0.0, -0.75, 1.0, 0.75, -0.75, 0.0, -0.75, 0.5, -0.25, -0.5, 0.25, -0.5, 0.0, -1.0, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, 1.0, -0.25, -1.0, 0.5, 0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, -0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -0.75, 0.0, -1.0, 1.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.25, 1.0, -0.75, 1.0, 0.25, 0.25, -0.75, 0.25, 0.75, ]);
    device10.destroy();
    
    
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    const array2 = new Float32Array([-0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 0.0, -1.0, 0.0, 0.75, -0.5, -1.0, 0.5, 0.0, -1.0, 0.5, -0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 1.0, -0.5, 0.0, 1.0, -0.5, 1.0, 0.25, -1.0, 0.0, 0.5, 0.75, -0.5, -0.5, -0.25, -1.0, 0.0, 0.75, -0.25, 0.75, 0.0, -0.5, 1.0, -1.0, -1.0, -0.75, -0.25, -0.25, 0.25, 1.0, 1.0, -0.25, 0.75, 0.75, -0.75, -1.0, 0.75, -0.75, -1.0, 0.25, -0.75, -0.25, 0.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -0.5, 0.25, 0.25, -0.5, 0.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device20.pushErrorScope("internal");
    render_bundle_encoder201.popDebugGroup();
    
    
    
    buffer200.destroy()
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder202.popDebugGroup();
    
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder200.popDebugGroup();
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    buffer203.destroy()
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.popDebugGroup();
    device40.destroy();
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    buffer202.destroy()
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array3 = new Float32Array([-0.5, -0.5, 0.0, 0.0, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.75, 0.5, 0.5, -0.25, 0.75, 0.5, -0.25, 0.5, 1.0, -0.5, -0.75, -0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -0.25, -0.75, 0.5, -0.75, -1.0, -0.5, 0.75, 0.5, 0.0, -0.25, -0.25, 0.5, 0.25, 0.25, -1.0, 0.25, 0.0, 0.5, 0.25, 0.5, -1.0, 0.5, -0.25, 0.0, 1.0, 0.75, -0.5, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.0, 0.5, 0.25, 0.75, -0.25, -1.0, -1.0, 0.0, 0.25, -0.75, 0.5, -0.75, 0.0, -0.5, 0.0, ]);
    
    
    
    
    const array4 = new Float32Array([-0.5, 0.0, -0.5, 0.25, 0.0, -1.0, -0.5, 0.5, -1.0, 0.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 0.25, 0.75, 0.25, -0.25, 0.75, 0.25, 0.5, 0.0, -0.75, 0.75, -1.0, 0.5, -0.25, 0.25, -0.25, 1.0, 0.25, -0.25, -0.25, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.5, 0.0, 0.75, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.25, -0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.5, 0.0, 0.25, -0.25, 0.25, 0.75, -0.75, 0.75, -0.5, -1.0, -1.0, -0.25, 0.75, -0.75, -0.75, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.5, -0.25, 0.5, 0.5, -0.5, ]);
    device20.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const array5 = new Float32Array([-1.0, 0.5, 1.0, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -0.5, 1.0, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.5, 0.0, -0.5, 0.5, 0.0, 0.5, -0.25, 0.0, 0.25, -0.5, 0.75, -0.25, 0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 0.25, 0.75, 0.5, 0.75, 0.25, -0.5, -0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.0, -1.0, 0.5, 0.25, -1.0, -0.25, 0.0, 0.25, -0.5, 0.5, -0.5, -1.0, -0.5, -0.5, 0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.5, ]);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device50.pushErrorScope("internal");
    buffer300.destroy()
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-0.25, 1.0, -0.75, 0.0, 1.0, 0.75, 1.0, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -1.0, -0.25, -0.75, -0.75, 0.75, -0.5, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, -1.0, -1.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.5, -1.0, 0.75, -1.0, 0.75, 1.0, -0.25, -0.75, 0.5, 0.0, 0.5, 0.25, -0.75, 0.5, 1.0, 0.25, 0.5, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, -1.0, 0.75, 0.0, 0.0, 0.25, -0.25, -0.25, 1.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.0, 0.5, -1.0, -0.75, 0.75, -0.25, 0.5, -0.75, 0.0, -0.75, -0.5, 0.75, 1.0, -0.5, 1.0, -0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 1.0, ]);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    buffer301.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.destroy();
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.pushErrorScope("validation");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const array7 = new Float32Array([-0.75, 0.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.75, 1.0, 1.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 0.0, -0.5, -0.5, -1.0, -0.75, 0.25, 1.0, 1.0, -0.75, -1.0, 0.25, 1.0, 0.25, 0.75, -0.25, -0.75, 0.5, -0.5, 0.5, 1.0, 0.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.5, 0.0, -1.0, 1.0, -1.0, 0.5, 0.0, -0.5, 1.0, 1.0, 0.75, 0.0, 0.25, 0.75, -1.0, -0.5, 0.5, 0.0, 0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, -1.0, -0.75, 0.5, -0.25, -0.25, 0.0, -0.25, 0.0, 0.5, -0.75, -1.0, -1.0, 0.25, -0.75, 0.75, -1.0, 0.75, 1.0, 0.75, -1.0, 0.75, 0.0, ]);
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    device70.destroy();
    
    
    
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    
    
    
    
    
    
    const array8 = new Float32Array([0.0, 0.5, 1.0, 0.75, -0.75, -0.75, 0.5, 0.75, -0.25, 0.5, -0.75, -0.25, -0.5, -0.5, -1.0, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, -0.5, -0.5, 1.0, 0.25, 0.5, 0.0, 0.25, 0.5, -0.5, 0.25, 0.5, -0.5, 1.0, 1.0, 0.0, -0.5, -0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.75, 1.0, -1.0, -1.0, 1.0, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, -0.5, 0.5, -0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -1.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, -0.75, 0.75, -1.0, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([0.75, 0.0, -1.0, 1.0, -1.0, 0.25, -0.75, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, 1.0, 0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.75, 0.25, 0.0, -1.0, 0.0, -1.0, -1.0, 1.0, 1.0, -0.5, -0.75, -1.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 0.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.0, -1.0, -0.75, 0.25, 0.5, 0.5, -0.5, 1.0, 0.0, 0.25, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, 1.0, -0.75, 0.0, -1.0, 1.0, 0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.0, -0.25, -0.75, ]);
    
    
    
    
    
    
    
    const array10 = new Float32Array([-0.75, 0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -0.25, 0.5, -0.5, 0.75, -1.0, -0.75, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, 0.75, 0.0, 0.25, -0.25, 0.0, 0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -0.25, -0.75, 0.25, -0.25, -0.25, -0.75, -0.25, 0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, -0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -1.0, 0.0, 0.0, 1.0, 0.0, -0.25, 1.0, 0.0, -1.0, 0.0, -0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 1.0, 1.0, 0.25, ]);
    
    const array11 = new Float32Array([0.75, 0.75, 0.5, 0.0, 0.75, -0.25, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 1.0, -1.0, -0.5, 0.0, -1.0, 0.75, -0.25, 0.0, -0.75, 0.75, -0.25, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.0, 0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 0.0, 0.25, 1.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.5, 0.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, 0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -0.5, -1.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 1.0, 0.5, 0.5, 0.5, -1.0, 1.0, -0.25, 0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, ]);
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array12 = new Float32Array([0.25, 0.5, 0.5, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, -0.5, 0.0, -0.5, 0.75, 1.0, -0.5, 0.75, -0.25, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, -0.25, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.75, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, 0.75, -1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, 0.0, 0.75, -0.75, 1.0, -0.25, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, 1.0, -0.25, -0.25, -0.5, -1.0, 1.0, 1.0, 0.25, 1.0, 0.5, 0.5, -0.5, 0.25, -0.5, 0.25, 0.25, -0.75, ]);
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    buffer901.destroy()
    render_bundle_encoder900.popDebugGroup();
    
    buffer900.destroy()
    
    device90.destroy();
    
    
    
    
    
    
    const array13 = new Float32Array([1.0, 0.0, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 0.25, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, 0.5, 0.0, 0.5, -0.25, 0.75, 0.0, -0.5, 1.0, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, -0.25, -1.0, 0.75, 0.0, -0.25, -0.5, 1.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.75, 1.0, -1.0, 0.75, -0.25, 0.0, -0.75, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.0, 0.75, 0.5, -0.5, 1.0, -0.75, 1.0, 0.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 1.0, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.0, 0.0, 0.0, -0.5, -0.75, -1.0, ]);
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array14 = new Float32Array([-1.0, -1.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.5, -0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.0, -0.75, -0.25, -1.0, 0.75, 0.0, 1.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.25, 0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.25, 1.0, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -1.0, -0.25, -0.25, 0.0, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -0.25, ]);
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device130.pushErrorScope("internal");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const array15 = new Float32Array([-1.0, -0.5, 0.25, -1.0, 0.25, 0.5, -0.5, -1.0, 0.25, 0.75, 0.5, 0.0, 0.0, 0.75, -0.25, 0.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.25, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, 0.25, 0.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.75, 0.75, 1.0, -0.5, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, 1.0, -0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, 0.25, -1.0, -0.25, -0.5, 0.0, 0.5, -1.0, 0.5, -0.5, 1.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.25, 1.0, 0.5, -0.25, 1.0, -1.0, -0.75, 1.0, 0.5, -0.25, -0.25, -0.75, -1.0, 0.0, 1.0, 0.5, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, 1.0, -1.0, ]);
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    
    
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    device110.destroy();
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array16 = new Float32Array([0.0, -0.5, 1.0, 0.5, 1.0, 0.25, 0.5, -0.75, 0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 1.0, 1.0, 0.25, 0.0, 1.0, -0.75, 0.5, 0.0, 0.0, 0.0, 1.0, 0.0, -0.25, 0.0, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.75, 1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -0.75, -1.0, 0.0, -0.75, -1.0, -1.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.25, 0.25, -0.25, 0.25, -0.75, 0.75, 0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 0.25, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, 0.5, -1.0, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, ]);
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    buffer1300.destroy()
    
    device120.destroy();
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array17 = new Float32Array([-0.25, 0.75, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, 1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -0.25, -0.25, -0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 1.0, -1.0, -0.75, 0.25, 0.25, 0.25, 0.5, -0.75, -0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, 0.0, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, -0.25, 1.0, 0.5, -0.75, 0.0, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, 0.5, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.25, 0.25, 0.5, -1.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, 0.25, ]);
    
    buffer1301.destroy()
    
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_bundle_encoder1300.insertDebugMarker("marker");
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    device130.pushErrorScope("out-of-memory");
    
    
    
    device100.destroy();
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device130.queue.writeBuffer(buffer1303, 0, array17, 0, array17.length);
    
    device130.queue.writeBuffer(buffer1303, 0, array14, 0, array14.length);
    
    
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    
    device130.queue.writeBuffer(buffer1303, 0, array13, 0, array13.length);
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    
    device130.queue.writeBuffer(buffer1303, 0, array6, 0, array6.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}