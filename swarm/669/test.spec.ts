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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    device10.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query002.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query200.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query000.destroy()
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.popDebugGroup()
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query002.destroy()
    
    const array0 = new Float32Array([0.5, 0.75, 0.5, 0.25, -0.25, 0.0, -0.25, 1.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.5, 1.0, -0.25, -0.5, 0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 1.0, 0.25, 1.0, -0.75, 0.25, -0.5, 0.25, 0.75, 1.0, 0.25, 0.25, 0.0, -0.75, 0.0, 0.25, 1.0, -0.25, 0.75, -0.25, -0.25, -0.75, 0.25, 0.25, -0.75, -0.75, -0.5, -1.0, 0.25, -1.0, 1.0, -1.0, -0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 1.0, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, -0.5, 1.0, 0.0, -0.75, -0.5, -0.25, -1.0, 1.0, 0.0, -0.25, -0.75, 1.0, 0.75, -0.75, -0.25, 0.25, 0.75, -1.0, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.pushErrorScope("internal");
    query200.destroy()
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query002.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array1 = new Float32Array([1.0, 0.0, -1.0, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, -0.75, -1.0, -0.5, 0.5, 0.5, -0.75, 1.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.0, -0.75, -0.25, 0.25, 0.5, 0.0, -0.25, 1.0, 0.25, 0.75, -0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 0.75, -0.5, -0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 0.0, 0.0, 1.0, 0.5, -0.25, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 0.0, -1.0, 0.25, 0.75, -0.25, 0.0, 1.0, 0.0, 0.25, -0.75, -0.25, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, 0.5, -0.5, ]);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    const array2 = new Float32Array([1.0, -1.0, -1.0, 0.25, -1.0, -0.75, 1.0, 0.25, 0.75, -1.0, -0.75, -0.25, 1.0, 1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -0.5, 0.0, 0.5, -0.5, -0.5, -0.25, -0.5, 0.5, -0.5, -0.25, -0.25, -0.25, 0.0, 0.5, 0.5, -0.25, 0.25, -1.0, 0.25, -0.25, 0.5, 0.0, -1.0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.0, 0.0, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.75, 1.0, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.0, -0.25, 1.0, -0.5, 0.0, 0.5, 0.25, -1.0, 0.75, -0.75, 0.5, 0.25, 0.25, -0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -0.75, 0.25, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device20.queue.submit([command_buffer200, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array3 = new Float32Array([-0.5, -0.75, 1.0, 0.75, -1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 1.0, 0.5, -0.5, -0.25, -0.75, 0.0, 1.0, -0.5, -0.25, 0.75, 0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 1.0, -0.5, -0.25, 1.0, -0.25, 1.0, 0.5, -0.25, 1.0, -0.75, 0.25, 0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, 0.75, 0.5, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 0.5, -0.5, -0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -0.75, 0.0, -0.5, 0.25, 0.0, -0.5, -0.25, -0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 0.25, -0.75, -0.25, 0.25, ]);
    query002.destroy()
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder301.insertDebugMarker("mymarker");
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query006.destroy()
    query005.destroy()
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query004.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    query000.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query004.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query007.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query000.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    query300.destroy()
    query300.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    query004.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query003.destroy()
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query001.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query005.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    query007.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.insertDebugMarker("mymarker");
    
    query005.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    query003.destroy()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    query302.destroy()
    query007.destroy()
    
    query300.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder300.popDebugGroup()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder202.insertDebugMarker("mymarker");
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    query006.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    command_encoder202.popDebugGroup()
    compute_pass_encoder2030.insertDebugMarker("marker")
    query301.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    query005.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    query303.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    query005.destroy()
    query302.destroy()
    
    command_encoder005.insertDebugMarker("mymarker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    query001.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query302.destroy()
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query302.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    
    
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder302.popDebugGroup()
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    query005.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query301.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const array4 = new Float32Array([1.0, 0.5, -0.5, -0.75, 0.0, 0.5, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.75, 0.75, 0.0, -0.25, -0.5, -0.5, -0.5, 0.25, 0.0, -0.5, 0.25, -0.5, -0.5, -0.5, 0.75, -1.0, 0.5, -0.25, -0.75, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, -1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, -1.0, -1.0, 0.5, -0.5, 0.25, 1.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.25, -1.0, -0.25, 0.75, -0.25, ]);
    const array5 = new Float32Array([0.25, -0.25, -1.0, 0.5, 0.0, 0.5, 0.5, 0.0, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -1.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.75, -0.75, -0.25, -0.5, 0.25, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, -0.75, 0.25, 0.25, -0.25, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.75, 1.0, 0.75, 0.0, 0.0, 0.75, -1.0, -0.75, -0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, ]);
    
    query005.destroy()
    
    compute_pass_encoder0020.popDebugGroup()
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    device70.destroy();
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device60.destroy();
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query300.destroy()
    
    compute_pass_encoder3010.popDebugGroup()
    query302.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    compute_pass_encoder2010.popDebugGroup()
    query000.destroy()
    query201.destroy()
    
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    query006.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query008.destroy()
    query302.destroy()
    const command_buffer302 = command_encoder302.finish();
    
    device30.queue.submit([command_buffer302, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    query005.destroy()
    
    query200.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    query005.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    compute_pass_encoder3030.insertDebugMarker("marker")
    command_encoder205.pushDebugGroup("mygroupmarker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    query007.destroy()
    
    query004.destroy()
    
    
    compute_pass_encoder0010.popDebugGroup()
    
    
    query305.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.popDebugGroup()
    
    
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    const command_buffer202 = command_encoder202.finish();
    device80.pushErrorScope("internal");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query000.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    query201.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query007.destroy()
    
    device00.queue.submit([command_buffer003, ]);
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    query005.destroy()
    compute_pass_encoder2010.popDebugGroup()
    
    command_encoder006.insertDebugMarker("mymarker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    query007.destroy()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    const array6 = new Float32Array([1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.5, -0.25, -0.5, -0.25, 1.0, -0.75, -0.25, 0.25, 0.25, -0.5, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 0.75, 0.0, 0.5, 0.25, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, -1.0, 0.0, 0.75, 0.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, -0.5, 0.5, -1.0, 0.5, -0.25, -1.0, -0.5, -0.75, -0.75, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, -0.75, 0.0, 0.0, 1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.0, -0.75, 0.0, 0.5, 0.25, ]);
    
    device110.pushErrorScope("internal");
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.popDebugGroup()
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    query201.destroy()
    
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder8010.popDebugGroup()
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const command_buffer204 = command_encoder204.finish();
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder8000.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    device20.queue.submit([command_buffer204, ]);
}