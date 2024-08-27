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
    const array0 = new Float32Array([0.25, 0.75, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, 0.75, -0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.75, 0.5, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, -0.5, 0.25, -1.0, -0.5, 0.25, -0.25, 0.75, 1.0, 1.0, -0.5, -0.25, -1.0, 1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.5, 0.0, 1.0, -0.25, -0.75, 1.0, -0.5, -0.25, -1.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, -1.0, 1.0, -0.25, 0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -1.0, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, -1.0, ]);
    
    
    const array1 = new Float32Array([0.5, 0.75, -0.25, 0.25, 0.25, 0.0, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, 0.25, -1.0, -0.5, 0.5, 0.0, 1.0, -0.5, -0.75, -0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.25, 1.0, 0.75, 0.0, -0.75, 0.25, 0.5, -1.0, -1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.75, 0.5, -0.5, -1.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -0.5, 0.5, -0.5, 0.0, -0.75, -0.5, -0.5, -1.0, ]);
    const array2 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 0.25, 1.0, -0.5, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, -0.5, 0.25, 1.0, 0.0, -0.25, -0.25, -0.5, 0.5, 0.0, 0.75, -0.75, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    device00.destroy();
    const array3 = new Float32Array([0.5, -0.5, 0.75, 0.75, 1.0, 0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, 1.0, -0.5, 0.0, -0.75, -0.75, 0.25, -0.25, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, -0.5, 0.0, 0.0, -0.5, 0.25, 0.25, -0.25, 0.0, 1.0, -0.5, 0.75, 0.75, -0.5, -0.5, -0.75, -0.75, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, 0.5, 1.0, -0.25, -0.75, 0.5, -0.25, 0.5, -0.5, 0.25, 0.25, 0.75, 0.25, 0.5, -1.0, 0.25, 0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.75, 1.0, 0.75, -0.5, 0.75, 0.0, -0.75, -0.25, -0.5, -1.0, -1.0, -0.5, 0.75, -0.5, 0.0, 0.0, 0.25, 0.0, 0.75, -1.0, 0.25, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer200.destroy()
    device10.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    
    device10.pushErrorScope("out-of-memory");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([1.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.75, -0.25, 1.0, -0.25, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, -0.75, -0.25, -1.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.75, -1.0, -1.0, 0.5, 0.25, 0.0, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, -0.5, 0.5, -0.25, 0.0, 1.0, 0.5, -0.25, -0.75, -1.0, -0.75, 0.5, -0.25, 0.75, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -0.25, 0.75, ]);
    
    
    
    buffer201.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array5 = new Float32Array([1.0, 0.75, -0.25, 0.5, -1.0, -0.25, -1.0, -1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, -1.0, 0.0, -0.5, -1.0, -1.0, -0.5, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, 0.25, 0.75, 0.5, 0.25, -0.5, 0.5, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.0, 0.75, -0.5, -0.5, 0.75, -1.0, -0.25, -0.75, -1.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.5, -0.25, -0.75, -1.0, -0.25, 0.25, -1.0, 0.75, -0.25, -1.0, -0.75, -0.75, 1.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, -1.0, 1.0, -0.5, 0.75, 0.75, -0.5, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, -0.75, -0.25, -0.25, -0.75, 0.5, ]);
    const array6 = new Float32Array([-0.5, -0.75, 0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -0.25, 0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 0.5, -0.75, -1.0, -0.75, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -0.75, 1.0, 0.25, 0.25, 0.75, -0.75, -0.5, 0.5, -0.5, -0.75, -1.0, 0.25, 0.0, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.0, -1.0, -1.0, 0.25, -0.75, 1.0, -1.0, -1.0, 0.75, 1.0, -0.5, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, -0.5, 0.5, -0.75, -0.75, -1.0, -0.25, -1.0, -0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 1.0, 0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 0.5, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([-0.25, -1.0, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, -0.5, 0.0, 1.0, -1.0, 0.75, -0.5, 0.5, -0.25, 0.0, -1.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, 1.0, -1.0, 0.75, -1.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.75, 0.5, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.25, 1.0, -0.5, -0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.25, 1.0, 0.25, 1.0, 1.0, -1.0, -1.0, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, 0.25, -1.0, -0.5, 0.75, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, -0.25, -0.25, 0.75, -1.0, -0.25, -0.5, 0.75, -1.0, ]);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array8 = new Float32Array([-1.0, 0.25, 0.75, -0.75, 0.25, 0.5, -1.0, 0.25, -0.25, 0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.5, 0.75, 1.0, 0.75, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, 0.75, -0.5, -0.75, 0.0, 0.0, 1.0, 0.5, -0.75, -0.25, -1.0, 0.0, 1.0, -0.25, 0.25, -0.5, 1.0, 0.25, -0.5, 0.5, 1.0, 1.0, 0.0, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -1.0, 1.0, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, 0.5, -0.5, 0.75, -0.25, 0.25, 0.5, 0.0, ]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.pushErrorScope("validation");
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([0.25, -0.75, 0.25, -0.75, 1.0, 0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 0.75, -1.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.75, 0.75, 0.25, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.0, 0.25, 0.75, -1.0, -0.25, 1.0, 0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 0.0, 0.0, -0.25, -0.75, 0.5, 0.25, -1.0, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, 0.5, -0.25, 1.0, -0.25, 1.0, 0.0, -0.5, 0.0, -1.0, 0.75, -0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.5, 0.0, -0.25, 1.0, 0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -1.0, 0.75, ]);
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device70.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array10 = new Float32Array([-0.25, -0.5, -0.25, -0.75, -0.75, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 0.0, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 0.0, -0.5, 1.0, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, -0.75, 1.0, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -1.0, -0.75, 0.5, 0.5, 0.75, 0.0, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, -1.0, 0.5, -0.25, -0.75, 0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, 0.0, 1.0, 0.5, 0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -0.5, -1.0, 0.25, 0.5, 0.25, 0.5, -1.0, -1.0, -1.0, 1.0, -1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.5, 0.0, -1.0, 0.75, -0.75, 0.75, -0.5, -0.25, -0.5, ]);
    buffer100.destroy()
    buffer501.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.75, -1.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, 1.0, -0.5, 0.75, 0.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.75, -0.75, -1.0, -0.25, -0.75, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, -0.25, 0.5, 0.75, -0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -0.25, -1.0, -0.5, 0.0, 0.5, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, 1.0, 0.5, -0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.75, 0.0, 1.0, -0.5, 0.25, 1.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.5, 0.5, 0.25, 0.5, -0.25, 0.0, -0.25, 0.5, -0.5, ]);
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer801.destroy()
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device70.destroy();
    
    
    
    
    
    
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.destroy();
    buffer802.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device90.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("internal");
    const array12 = new Float32Array([-0.5, -0.75, -0.75, 0.5, 0.75, 0.5, 0.25, -0.75, -1.0, 0.75, 0.0, 0.75, 1.0, 0.25, 0.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, -0.25, 0.5, 1.0, 0.75, -0.5, -0.75, -1.0, -0.75, -0.5, 0.5, 1.0, -1.0, 0.0, -1.0, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.25, 0.75, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, 1.0, -1.0, -0.25, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.25, -1.0, 1.0, ]);
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array13 = new Float32Array([-0.25, -1.0, 1.0, -0.25, -0.25, 0.25, 1.0, -0.75, -0.5, -0.25, -0.75, 1.0, 0.5, -0.5, 1.0, 0.25, 1.0, -0.75, -0.5, -1.0, 0.0, 0.75, -0.5, -0.5, -0.75, 0.5, 0.5, -0.75, 0.25, -0.75, -0.25, -0.25, 0.5, 0.0, 0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, -0.25, 0.75, 1.0, 0.25, 1.0, 0.5, -0.25, 0.0, -0.25, 0.5, 0.75, 0.5, -0.25, -1.0, -0.25, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, -0.5, -1.0, 1.0, 0.5, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, 0.75, -0.5, -0.75, -1.0, -0.25, 0.75, ]);
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    buffer901.destroy()
    
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer900.destroy()
    buffer300.destroy()
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device80.pushErrorScope("validation");
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer803, 0, array8, 0, array8.length);
    buffer500.destroy()
    
    
    
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device80.queue.writeBuffer(buffer804, 0, array9, 0, array9.length);
    
    
    
    buffer600.destroy()
    device80.queue.writeBuffer(buffer806, 0, array8, 0, array8.length);
    
    device50.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer805, 0, array1, 0, array1.length);
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer800.destroy()
    
    device80.queue.writeBuffer(buffer803, 0, array8, 0, array8.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device80.queue.writeBuffer(buffer803, 0, array5, 0, array5.length);
    
    
    device80.queue.writeBuffer(buffer804, 0, array9, 0, array9.length);
    
    
    device80.queue.writeBuffer(buffer806, 0, array11, 0, array11.length);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device90.destroy();
    device80.queue.writeBuffer(buffer806, 0, array12, 0, array12.length);
    
    
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer802, 0, array13, 0, array13.length);
    device80.queue.writeBuffer(buffer803, 0, array7, 0, array7.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeBuffer(buffer806, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer804, 0, array11, 0, array11.length);
    device80.queue.writeBuffer(buffer806, 0, array5, 0, array5.length);
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    buffer803.destroy()
    device80.queue.writeBuffer(buffer804, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer804, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer804, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer806, 0, array12, 0, array12.length);
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    device120.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer804, 0, array10, 0, array10.length);
    
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer806, 0, array6, 0, array6.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device80.queue.writeBuffer(buffer804, 0, array12, 0, array12.length);
    
    device80.queue.writeBuffer(buffer804, 0, array3, 0, array3.length);
    
    device80.queue.writeBuffer(buffer804, 0, array13, 0, array13.length);
    
    device80.queue.writeBuffer(buffer804, 0, array0, 0, array0.length);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer804, 0, array2, 0, array2.length);
    
    device80.queue.writeBuffer(buffer803, 0, array0, 0, array0.length);
    
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    
    device80.queue.writeBuffer(buffer806, 0, array9, 0, array9.length);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const array14 = new Float32Array([1.0, 0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.5, 0.5, -0.25, 1.0, 0.0, -0.75, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 0.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.25, -0.25, -0.25, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -1.0, 0.75, -0.5, -0.75, 1.0, -0.5, 0.0, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.25, 0.25, -0.25, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.25, -1.0, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 0.0, ]);
    
    
    device80.queue.writeBuffer(buffer806, 0, array0, 0, array0.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device80.queue.writeBuffer(buffer806, 0, array11, 0, array11.length);
    device80.queue.writeBuffer(buffer806, 0, array14, 0, array14.length);
    
    
    device80.queue.writeBuffer(buffer806, 0, array13, 0, array13.length);
    
    
    device80.queue.writeBuffer(buffer800, 0, array12, 0, array12.length);
    
    
    const array15 = new Float32Array([0.0, -0.5, -1.0, 0.5, 0.25, 0.0, -1.0, -0.25, -0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 0.75, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, 0.75, 0.5, -0.5, -0.5, -0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 0.75, 0.75, 1.0, 1.0, -0.5, 0.25, -1.0, 0.75, 0.5, 0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, 1.0, 1.0, -1.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -1.0, 0.0, -0.75, 0.75, 0.75, 0.5, 0.5, 0.0, 0.0, -1.0, 0.0, -0.5, -0.5, 0.0, -1.0, -0.75, -0.25, -0.75, 0.75, 1.0, ]);
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device80.queue.writeBuffer(buffer806, 0, array10, 0, array10.length);
    
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer804, 0, array1, 0, array1.length);
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device80.queue.writeBuffer(buffer804, 0, array2, 0, array2.length);
    
    device80.queue.writeBuffer(buffer804, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer806, 0, array3, 0, array3.length);
    
    device80.queue.writeBuffer(buffer806, 0, array5, 0, array5.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer804, 0, array7, 0, array7.length);
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer806, 0, array15, 0, array15.length);
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    buffer806.destroy()
    buffer804.destroy()
    
    
    
    
    
    device100.pushErrorScope("internal");
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    
    
    device120.queue.writeBuffer(buffer1200, 0, array12, 0, array12.length);
    
    
    
    
    device80.queue.writeBuffer(buffer803, 0, array11, 0, array11.length);
    device60.pushErrorScope("out-of-memory");
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.pushErrorScope("internal");
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    device80.queue.writeBuffer(buffer802, 0, array12, 0, array12.length);
    
    
    buffer1200.destroy()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device60.destroy();
    
    const array16 = new Float32Array([-0.25, 0.25, -0.5, -1.0, 0.0, -1.0, 1.0, 0.25, -0.75, 0.25, -0.25, 0.75, 0.25, 1.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.75, 0.0, 1.0, -0.25, -1.0, 0.25, 1.0, 0.75, 0.0, -0.5, -0.5, -0.25, 0.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 0.0, 0.75, 0.0, -0.25, 1.0, 0.75, -1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, -0.25, -1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 0.75, -0.25, 0.25, 0.25, -0.25, -1.0, 0.5, 0.0, ]);
    
    
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device100.destroy();
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("out-of-memory");
    
    
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    buffer1201.destroy()
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    device90.queue.writeBuffer(buffer903, 0, array12, 0, array12.length);
    
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer806, 0, array9, 0, array9.length);
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    const array17 = new Float32Array([-0.5, -0.5, -1.0, 0.25, 1.0, 0.75, -1.0, -1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 1.0, -1.0, -1.0, -0.75, 0.75, 0.0, 1.0, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.0, -1.0, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, 0.25, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, 0.5, 0.75, -0.75, 0.75, 1.0, 1.0, -1.0, 0.5, -0.75, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, 1.0, 1.0, -0.25, -0.5, 0.75, 1.0, 0.75, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.5, -1.0, -1.0, 0.5, 0.75, 0.0, 0.75, -0.25, -0.75, 0.25, 1.0, 0.75, 1.0, 1.0, 0.0, -1.0, 0.0, 1.0, 1.0, -0.25, -0.25, ]);
    device80.queue.writeBuffer(buffer804, 0, array5, 0, array5.length);
    
    
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    device80.queue.writeBuffer(buffer802, 0, array16, 0, array16.length);
    
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device140.queue.submit([]);
}