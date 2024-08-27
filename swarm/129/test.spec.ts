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
    const array0 = new Float32Array([0.0, 0.75, -0.5, -0.75, 0.75, -0.25, 0.25, 0.75, -1.0, 0.0, -1.0, 0.25, 0.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, -0.5, 0.0, 0.25, 0.5, 0.75, -0.75, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 0.5, -0.5, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, -0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 0.25, 0.25, 1.0, -0.5, 0.0, 0.5, 0.75, -0.25, -0.25, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, -1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.75, -0.25, ]);
    const array1 = new Float32Array([0.75, -0.25, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.5, 0.5, 0.25, 1.0, 0.5, 0.0, -0.25, 0.5, -0.25, 1.0, -1.0, -0.75, -0.75, -0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.0, 0.75, 0.75, -0.25, -1.0, -0.75, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 0.0, 0.5, 0.75, 0.0, -0.5, -0.75, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, -1.0, 1.0, 1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.0, -0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 0.0, -0.25, -1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.0, -0.25, -0.25, 0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    device10.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.destroy();
    
    const array2 = new Float32Array([-0.5, 0.5, -0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -0.25, -0.25, -0.75, -0.5, -0.75, -1.0, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.25, 0.5, 0.5, 0.75, -0.75, 0.25, 0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.5, -0.25, -0.75, 0.0, 0.75, -0.5, 1.0, 0.25, -0.75, -1.0, -1.0, -0.25, -0.5, 1.0, -0.5, 0.0, 1.0, -0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.5, 0.0, -0.5, 1.0, -1.0, -1.0, 1.0, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-0.75, 0.75, -1.0, -0.75, -0.75, -0.5, -0.25, -0.25, 0.75, 0.75, 0.5, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, 1.0, 0.5, 0.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 0.75, -0.25, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 1.0, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, -1.0, 0.0, -0.25, 1.0, 0.5, -0.75, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 1.0, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -0.5, -0.5, -0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.75, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.pushErrorScope("out-of-memory");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([1.0, 0.5, -0.5, 0.25, 0.25, 0.0, 1.0, -0.5, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -0.5, 0.25, 0.0, 1.0, -1.0, -0.75, -1.0, -0.75, -0.75, -0.5, 0.75, 0.0, -1.0, -0.25, -0.75, -1.0, -0.25, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, -0.25, -1.0, -0.25, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, 1.0, 0.0, 1.0, 0.0, -1.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, 0.5, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, 0.5, 0.5, 1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, 0.0, -0.25, 0.75, 0.0, 0.5, -0.25, -0.75, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    
    const array5 = new Float32Array([-1.0, 0.25, 0.25, 0.5, 0.75, -1.0, 1.0, 0.75, -0.75, 0.0, 0.75, 0.75, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.5, -1.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.25, 0.0, 0.25, 0.25, 0.25, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, -0.75, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.75, -0.75, -1.0, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, 0.25, 0.0, -0.5, 0.5, -0.75, -1.0, -0.25, -0.25, -1.0, -0.75, 0.25, 0.75, -1.0, 0.0, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, -0.5, -0.5, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.pushErrorScope("out-of-memory");
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([-0.75, 0.75, -0.25, -0.5, -0.5, -0.25, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, -0.75, -0.25, 0.0, 0.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.75, 0.75, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 1.0, -0.75, -0.5, 0.0, 0.0, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.75, 0.0, 0.75, 0.0, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, -0.75, -0.5, 0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.5, 0.75, 0.25, 1.0, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, -0.5, -0.5, 0.5, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, 0.5, 0.0, 0.75, 0.25, -0.25, -1.0, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    const array7 = new Float32Array([-0.25, -0.25, -0.25, -0.25, 0.25, -0.75, 0.0, 0.75, 0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -0.25, -0.25, 0.0, 1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -0.25, 0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -1.0, -0.25, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, -1.0, -0.75, 1.0, 0.5, 0.0, -0.5, -0.25, 0.5, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, 1.0, -0.75, 0.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.25, -0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 0.0, 0.5, 0.5, -1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 1.0, -0.25, 0.25, -0.75, -0.5, 0.25, 1.0, 0.5, -1.0, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    device20.queue.submit([command_buffer200, ]);
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([1.0, 0.5, -0.25, -0.25, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.5, 0.25, 0.0, 0.75, -0.25, 0.0, -0.25, -0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.75, 0.0, 0.0, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -0.25, 0.75, -1.0, -0.75, -0.5, -1.0, 0.25, -0.5, 1.0, -0.25, -1.0, -0.75, -1.0, 1.0, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, -0.5, -0.25, 0.0, 0.5, 0.75, 0.0, 0.0, 0.25, -1.0, -1.0, 0.75, 0.25, -1.0, -0.75, -0.25, 0.5, -0.5, 0.25, -0.5, -0.25, 0.75, -1.0, -0.25, 0.0, 1.0, 0.75, -0.75, 1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.75, -0.25, 0.5, 0.75, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device20.pushErrorScope("validation");
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.pushErrorScope("internal");
    command_encoder201.insertDebugMarker("mymarker");
    const array9 = new Float32Array([-0.5, 0.75, -0.75, 0.0, -0.5, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -0.25, -1.0, 0.5, 0.0, 0.25, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, -0.75, 0.75, 0.25, -0.25, -0.5, 1.0, 0.0, 0.0, -0.75, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -0.5, 0.25, -0.5, -0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.5, ]);
    command_encoder400.popDebugGroup()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder200.popDebugGroup();
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const command_buffer401 = command_encoder401.finish();
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const array10 = new Float32Array([0.0, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 0.25, -0.75, -1.0, 1.0, -0.25, 0.0, -0.25, -1.0, 0.5, -0.25, 0.5, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, 0.5, -0.5, -0.5, 0.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.25, 1.0, 0.5, 0.5, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.25, 0.25, 0.75, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.5, -0.25, 0.25, 1.0, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 1.0, -0.25, 1.0, -0.5, ]);
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.pushErrorScope("internal");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    
    
    
    
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    command_encoder403.insertDebugMarker("mymarker");
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("out-of-memory");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const command_buffer404 = command_encoder404.finish();
    const command_buffer203 = command_encoder203.finish();
    
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder402.insertDebugMarker("mymarker");
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    
    const command_buffer500 = command_encoder500.finish();
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder403.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    command_encoder205.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder403.insertDebugMarker("mymarker");
    
    
    command_encoder403.popDebugGroup()
    
    
    
    device40.queue.submit([command_buffer404, ]);
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    const command_buffer205 = command_encoder205.finish();
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const command_buffer206 = command_encoder206.finish();
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    
    render_bundle_encoder201.popDebugGroup();
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    
    command_encoder403.insertDebugMarker("mymarker");
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.submit([command_buffer401, ]);
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    
    
    
    device20.queue.submit([command_buffer206, ]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    
    
    command_encoder403.insertDebugMarker("mymarker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    command_encoder403.insertDebugMarker("mymarker");
    
    render_bundle_encoder201.popDebugGroup();
    device60.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const command_buffer502 = command_encoder502.finish();
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder403.popDebugGroup()
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5030.insertDebugMarker("marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("out-of-memory");
    
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    device20.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    compute_pass_encoder4020.insertDebugMarker("marker")
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder504.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder400.popDebugGroup();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder504.insertDebugMarker("mymarker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module2016_code = "";
    try {
        shader_module2016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2016 = await device20.createShaderModule({ label: "shader_module2016", code: shader_module2016_code })
    const command_buffer207 = command_encoder207.finish();
    command_encoder504.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer504, ]);
    const command_buffer406 = command_encoder406.finish();
    device50.queue.submit([command_buffer502, ]);
    device40.queue.submit([command_buffer406, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer207, ]);
}