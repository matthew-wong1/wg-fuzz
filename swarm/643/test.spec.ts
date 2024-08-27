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
    const array0 = new Float32Array([0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.0, -0.5, 0.5, 0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.0, 0.75, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, -0.5, 1.0, -1.0, -0.5, 0.75, 0.75, 0.75, -0.5, 0.25, -0.25, -0.5, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -0.25, -0.5, -1.0, 1.0, -0.25, -0.25, 0.5, 0.25, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 1.0, 0.75, 1.0, 0.5, 0.25, 0.75, -1.0, ]);
    
    
    const array1 = new Float32Array([-0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 0.0, 0.5, -0.75, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.25, -0.5, 0.0, 0.25, 1.0, -0.5, 0.75, -0.5, 0.0, 0.75, -1.0, -1.0, -0.75, 0.75, 0.25, -0.25, -1.0, -0.75, 1.0, -0.25, -1.0, 0.75, -1.0, -0.25, -0.5, 0.75, 0.0, 0.0, 1.0, -0.5, 1.0, 0.5, -0.75, 0.25, -1.0, -1.0, -0.25, -0.5, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 0.5, -0.25, -0.5, 1.0, 0.5, -1.0, 0.0, -0.25, -1.0, 1.0, -0.75, 0.75, -0.5, 0.75, -0.25, 0.25, -0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, -0.5, 1.0, 0.75, -0.75, 0.0, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, 1.0, 0.25, ]);
    
    
    
    
    const array2 = new Float32Array([0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, 0.25, -1.0, -0.5, -0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 1.0, 1.0, -1.0, -1.0, 0.75, 1.0, 0.5, 0.5, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, 0.25, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 0.0, 0.75, 0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.0, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 1.0, -0.25, 0.5, 0.0, 0.0, -0.5, 0.75, 0.5, 0.0, -0.25, 0.25, 0.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -0.5, -0.75, 0.25, 0.0, 1.0, ]);
    
    
    const array3 = new Float32Array([-0.5, 1.0, -0.5, 1.0, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, 0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.75, -0.25, -1.0, 1.0, 0.5, 0.75, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.25, -1.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.0, -0.5, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 1.0, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.5, 0.75, 0.75, 0.0, -0.5, 0.0, -0.5, 1.0, ]);
    const array4 = new Float32Array([-0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -0.25, -0.75, 0.75, 1.0, 0.0, 0.0, -0.25, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, -1.0, 0.75, 0.75, 0.75, -0.75, -1.0, 0.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.0, 1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, -0.75, 0.75, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 1.0, -0.25, 0.5, -1.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, -0.5, -0.25, -0.5, 0.25, 0.0, 0.0, 0.25, -1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.0, -0.25, 0.75, 0.25, 1.0, ]);
    const array5 = new Float32Array([1.0, -0.75, 0.0, 0.5, -1.0, 0.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 1.0, -0.75, 0.0, 0.0, -0.25, -1.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 1.0, -0.25, 0.5, 0.75, 0.0, -0.25, 0.25, 1.0, 0.75, 0.75, 1.0, -0.5, 0.25, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 0.0, -1.0, 0.5, -0.75, 0.75, 0.75, 1.0, 0.75, 0.0, -0.25, -1.0, 0.5, -0.25, -1.0, 0.25, -0.5, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 0.25, -1.0, 0.25, 1.0, 0.75, 0.0, 0.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.75, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const array6 = new Float32Array([0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 0.5, 1.0, -0.25, -0.5, -1.0, -0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.0, -0.75, 1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.75, 1.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, -0.25, 1.0, 0.25, -0.5, -0.5, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, 1.0, 0.0, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, 0.5, 0.75, 1.0, -0.25, 0.75, -1.0, 0.25, 0.5, 0.75, 0.5, 1.0, -0.25, -0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.0, 0.0, -0.25, ]);
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.75, 0.25, 0.5, -0.25, 0.75, -0.25, 0.5, -1.0, 1.0, -0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, 0.75, 0.75, -0.5, 1.0, -0.25, -0.5, -0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -1.0, 0.75, -1.0, 1.0, 0.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, 0.5, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 0.5, 0.5, 1.0, -1.0, 0.5, -0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.75, -1.0, -0.75, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    query000.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer000.destroy()
    
    
    
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query000.destroy()
    query001.destroy()
    const array8 = new Float32Array([1.0, -0.75, 0.5, 0.0, -0.75, 0.5, 0.0, 0.25, -0.5, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, 0.5, -0.25, -0.25, -0.75, -0.5, -0.75, 1.0, 0.0, 0.75, 1.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, -0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.5, -0.75, 0.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, 0.0, 0.75, -0.25, -0.5, -0.75, -0.75, 0.25, -1.0, 0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 0.25, -0.5, -1.0, 0.0, -0.25, -0.25, -1.0, -0.75, 1.0, -0.25, ]);
    
    
    
    
    query001.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query000.destroy()
    const array9 = new Float32Array([1.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 0.75, -0.5, 1.0, -0.5, 0.25, 1.0, 1.0, 0.0, 0.0, -0.25, -0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -0.25, 1.0, -0.25, -0.75, -0.75, -0.5, -1.0, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, -0.5, -0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 0.25, 0.25, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, -0.75, 0.0, -0.75, -1.0, -0.5, -0.25, -0.5, 0.25, 0.0, -0.25, -0.25, 0.0, -0.25, 0.75, 1.0, ]);
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query000.destroy()
    render_bundle_encoder000.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query004.destroy()
    
    device00.pushErrorScope("validation");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer001.destroy()
    query000.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    query000.destroy()
    
    query002.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    
    render_bundle_encoder001.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query006.destroy()
    device20.pushErrorScope("internal");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder001.popDebugGroup()
    query003.destroy()
    query000.destroy()
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query003.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const command_buffer301 = command_encoder301.finish();
    
    
    
    
    render_bundle_encoder201.popDebugGroup();
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const query008 = device00.createQuerySet({
        label: "query008",
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
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query002.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    query006.destroy()
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    device20.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    
    
    query006.destroy()
    
    render_bundle_encoder301.popDebugGroup();
    query300.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder002.popDebugGroup();
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query005.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query002.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    query001.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
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
    query301.destroy()
    
    query004.destroy()
    query008.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder300.popDebugGroup();
    query009.destroy()
    query301.destroy()
    query009.destroy()
    
    render_bundle_encoder001.popDebugGroup();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query007.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const array10 = new Float32Array([-1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.75, -0.5, -0.5, -0.25, 0.75, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, -1.0, 0.0, 0.75, -0.75, -1.0, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.75, -0.5, -0.25, 0.25, -0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.75, -1.0, -0.5, 0.0, -1.0, -0.25, -0.25, 0.75, -0.25, 0.75, 0.25, -0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 0.5, -0.5, 0.75, 0.0, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder004.popDebugGroup()
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query009.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    
    command_encoder302.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query003.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    buffer002.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    query001.destroy()
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    query002.destroy()
    device30.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    query005.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
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
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    query302.destroy()
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    
    device50.pushErrorScope("validation");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    query007.destroy()
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    query003.destroy()
    
    query003.destroy()
    query001.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query007.destroy()
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    query300.destroy()
    query300.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    device60.destroy();
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
    query303.destroy()
    query401.destroy()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer401 = command_encoder401.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer402 = command_encoder402.finish();
    const command_buffer400 = command_encoder400.finish();
    command_encoder304.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer301, ]);
}