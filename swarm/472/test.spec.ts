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
    const array0 = new Float32Array([0.5, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.25, 1.0, 0.5, -0.5, 0.0, -0.5, -1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, -0.75, -0.25, 0.0, 0.25, -0.75, -0.75, 0.25, -1.0, -1.0, -1.0, -0.25, 0.5, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.75, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -1.0, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.75, -0.25, 0.75, 0.0, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
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
    const array1 = new Float32Array([0.25, -0.75, 0.75, 1.0, 0.5, 0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 0.25, 0.5, -1.0, -0.5, 1.0, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, -0.75, 1.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, 0.0, 1.0, 0.25, 1.0, -0.75, 0.0, -0.75, -1.0, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, 0.5, -0.25, 0.0, 1.0, 1.0, 0.75, -0.75, -0.75, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 0.75, 0.0, 0.5, -0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 0.0, 0.5, 1.0, -0.75, 0.25, 0.75, 0.75, 0.0, 1.0, ]);
    const array2 = new Float32Array([-0.75, -0.5, -1.0, -1.0, 0.25, 0.75, -0.25, -0.25, -1.0, 0.75, -0.75, 0.5, -0.5, 0.75, -1.0, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 0.5, -0.75, 0.5, -1.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.75, -0.75, -0.5, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, 0.75, -0.75, 0.25, 1.0, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.25, 0.5, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, -0.25, -0.75, 0.25, -0.25, -1.0, 0.75, 0.75, -0.5, -0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 0.75, 1.0, -1.0, -0.25, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const array3 = new Float32Array([0.0, -1.0, -1.0, -0.5, -0.75, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, 0.0, 1.0, 0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, -0.25, 0.75, -1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 1.0, 1.0, -0.25, 0.5, 0.5, 0.0, 0.5, -1.0, 0.25, -0.75, 0.75, 0.75, -0.75, -0.75, 0.25, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 0.5, -0.25, -1.0, 0.25, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 0.75, -0.25, 0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 0.25, 0.0, -0.5, -0.5, 0.0, 0.75, 0.25, 0.25, -0.25, -0.5, 0.75, -0.5, 0.25, -0.5, -0.5, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array4 = new Float32Array([1.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, -1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -1.0, -0.25, -0.75, 1.0, -0.75, -0.5, -0.75, -1.0, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.75, 0.75, -1.0, 0.5, -0.5, -0.25, 0.5, 0.5, -1.0, -0.5, 0.25, -1.0, -0.5, -1.0, -0.75, 0.5, 0.75, 0.5, -0.5, -0.75, 0.75, -0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 1.0, 0.5, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, -0.25, 1.0, 0.5, 0.5, -0.75, ]);
    const array5 = new Float32Array([-1.0, -0.5, -1.0, 1.0, -0.5, 0.75, -1.0, -0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 0.25, -0.5, 0.25, -0.25, 0.0, -0.75, 1.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, 0.5, -1.0, -0.5, -1.0, 0.25, 0.25, -0.75, 0.5, -0.75, -1.0, -0.25, -0.5, -0.75, -0.5, 1.0, 0.25, 0.25, -0.75, 1.0, -0.5, 1.0, -1.0, -0.75, -0.75, -0.75, -0.5, 1.0, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, -0.5, -0.75, -0.75, 0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.5, ]);
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device30.pushErrorScope("internal");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer001.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.pushErrorScope("internal");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder003.pushDebugGroup("mygroupmarker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    buffer201.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.popDebugGroup()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer300.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder202.popDebugGroup()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    buffer200.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    buffer003.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    buffer302.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.25, -1.0, 0.75, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.25, -1.0, 0.5, -1.0, -0.25, 0.25, 1.0, 0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 0.75, 0.25, 0.25, -0.25, -0.75, 0.0, 0.5, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, -0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 0.5, 1.0, -1.0, -0.75, -0.5, 1.0, -1.0, -0.25, -0.25, 0.5, 0.5, -1.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, 0.5, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder502.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    buffer301.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    device40.pushErrorScope("validation");
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.pushErrorScope("validation");
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    buffer502.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer501.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer100.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder400.clearBuffer(buffer400);
    buffer004.destroy()
    device00.pushErrorScope("validation");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    buffer400.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder004.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    compute_pass_encoder6000.popDebugGroup()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder004.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.5, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, -1.0, -0.5, 0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.75, 0.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 1.0, 0.75, 0.0, 1.0, 1.0, 0.0, 0.25, 0.25, 1.0, 0.25, 0.5, -0.5, 0.25, 0.75, -0.25, 0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 0.25, -0.75, 0.0, -0.5, 1.0, 0.75, -0.5, 0.0, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, 0.25, -0.75, -1.0, 1.0, -0.25, 1.0, -1.0, 1.0, -0.75, -0.75, 0.75, 0.75, ]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer303.destroy()
    buffer005.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer101.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder802.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder102.popDebugGroup()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.popDebugGroup()
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer205.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.pushErrorScope("out-of-memory");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    compute_pass_encoder0030.popDebugGroup()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer204.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    compute_pass_encoder0000.popDebugGroup()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    compute_pass_encoder8010.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    buffer401.destroy()
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pass_encoder8030 = command_encoder803.beginComputePass({ label: "compute_pass_encoder8030" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder8010.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer206.destroy()
    compute_pass_encoder8000.insertDebugMarker("marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer203.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.popDebugGroup()
    command_encoder802.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder203.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
}