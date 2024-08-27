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
    
    
    
    
    
    
    const array0 = new Float32Array([0.25, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, -0.25, -0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 0.75, -0.5, 0.75, 0.5, -0.75, -0.25, 0.75, 0.5, -1.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, -0.25, 1.0, 1.0, 0.0, -0.5, -0.75, -0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, -0.5, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 0.75, 0.25, 0.0, 0.5, 0.75, -1.0, 0.0, 0.75, 0.5, -0.75, -0.25, 1.0, -0.5, -0.25, -0.75, -0.75, 0.25, 1.0, -0.5, 0.5, 0.0, 1.0, -0.75, -0.25, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, 0.0, 0.75, 1.0, 0.25, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.5, 0.25, 0.25, -0.75, 0.75, 0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, -0.75, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 0.75, -0.25, 0.75, -0.5, -0.75, 0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 0.5, 0.5, -0.75, 0.5, -0.75, -0.25, 0.75, 0.5, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.25, 1.0, -1.0, 0.25, 0.0, 0.75, -0.75, 0.75, 1.0, 0.0, 1.0, -0.75, -1.0, -0.5, 0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 1.0, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([-0.5, 0.75, -1.0, -0.75, -1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -0.25, 0.5, 0.25, 0.5, 0.5, 0.75, 0.75, 1.0, -0.25, 1.0, 0.25, 0.0, -1.0, -1.0, -0.25, -1.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, -1.0, -1.0, 1.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 1.0, 0.75, -0.75, -0.25, 0.5, 0.75, -0.25, 0.5, -0.25, 0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 0.25, 0.0, -1.0, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, 0.5, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.0, -1.0, 0.5, 0.25, -0.75, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array3 = new Float32Array([-1.0, 0.0, -1.0, -0.5, 0.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.75, 1.0, 1.0, 0.5, 1.0, 0.75, 0.25, -0.75, -0.25, -0.25, 0.25, 1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 0.25, 0.5, 1.0, -0.75, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, 0.0, 1.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.0, -0.75, 0.0, -1.0, -0.75, -0.5, -0.75, -1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.75, -0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.25, -0.5, -0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, ]);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device20.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
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
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.75, 1.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.25, 0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, -0.5, 0.5, 0.25, 1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, -0.25, -0.5, 0.0, 1.0, 1.0, -0.25, -0.5, 0.25, 1.0, -1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.0, -0.75, 0.5, 1.0, 0.75, 0.0, ]);
    device10.destroy();
    
    
    
    const array5 = new Float32Array([-1.0, 0.0, -0.5, 0.0, -0.75, -0.5, -0.5, 0.75, -0.75, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, -0.75, 1.0, 0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 0.25, -0.5, -0.5, -0.5, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 0.25, 0.5, 1.0, 0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, -0.75, 0.5, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.5, -0.75, 0.75, 0.0, -1.0, 0.5, 0.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, 0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.75, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const array6 = new Float32Array([0.75, -0.25, -0.5, 0.75, 0.75, -0.25, -1.0, -0.25, 0.5, 0.5, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -1.0, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 1.0, -0.25, -0.75, 0.75, -0.25, 0.75, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 1.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.25, 0.0, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.5, 0.75, -0.75, -0.5, 0.25, 0.75, -0.25, -1.0, 1.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, -1.0, -1.0, 0.0, 0.0, -0.5, 0.25, -1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 0.5, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, -0.25, -0.25, -0.5, 1.0, 0.5, -1.0, ]);
    
    device20.pushErrorScope("internal");
    
    
    
    const array7 = new Float32Array([-0.75, 0.75, 0.75, 0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 0.0, -1.0, -0.75, -1.0, 0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.0, 0.5, 1.0, -1.0, -0.75, 0.75, -0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 1.0, -1.0, 0.5, -0.25, 0.0, -0.25, -1.0, -0.75, 0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 0.25, -0.5, 1.0, 0.5, -0.75, -0.5, -0.5, -0.75, 0.5, -0.5, -0.25, 0.25, 0.75, -0.25, 0.5, -1.0, ]);
    const array8 = new Float32Array([0.0, -0.75, 0.25, 0.0, -1.0, 0.0, -0.25, -0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 1.0, 0.0, -0.25, 0.75, -0.75, 0.25, -0.5, 0.25, 1.0, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, 0.0, 1.0, 0.5, 0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 0.75, 0.75, 0.25, 0.0, 0.5, 1.0, 0.5, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, -0.75, -1.0, -0.25, 1.0, -0.25, 0.75, -0.25, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -0.5, -1.0, -0.25, 0.75, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.25, 0.0, 0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 0.75, -1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, ]);
    
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
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    device50.queue.submit([]);
    device50.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([0.75, -0.5, -0.75, 0.0, 0.5, 0.25, 0.0, -0.25, -0.5, 1.0, 0.25, 1.0, -0.75, 0.0, 0.75, -0.25, -0.5, -1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, -0.5, 0.5, -0.75, -1.0, 0.75, -0.5, 0.5, -0.75, 0.5, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 0.75, -0.5, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 1.0, -1.0, -0.5, 0.0, -0.75, 0.0, 0.0, -0.25, -0.25, 0.25, 0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, -1.0, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.25, ]);
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const array10 = new Float32Array([0.0, 1.0, 0.5, -1.0, 0.5, 1.0, 1.0, 0.5, 0.25, 0.5, -0.25, -0.5, -0.75, 1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.0, 0.5, -0.5, -0.25, -0.5, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.0, 0.25, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, 0.75, 0.5, 0.75, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -0.75, -1.0, -0.75, -0.75, 0.25, 0.5, 1.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.25, 1.0, -0.75, -0.75, 1.0, -0.75, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 1.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.25, -0.25, -1.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    buffer601.destroy()
    
    device10.destroy();
    
    const array11 = new Float32Array([-1.0, -0.75, -0.5, -1.0, -0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, 0.5, -0.75, -1.0, 0.75, -1.0, -1.0, -1.0, 0.5, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 1.0, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, 0.25, 1.0, -0.75, -0.5, 0.0, 0.75, -1.0, -1.0, 1.0, -0.5, 0.0, 0.0, -0.5, 0.25, 1.0, 0.0, -0.75, 0.75, 0.25, -1.0, 1.0, 0.5, -0.75, 1.0, 1.0, 0.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.5, 0.0, -0.5, -1.0, -0.75, 0.75, 0.25, 0.75, -0.25, ]);
    
    texture600.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer601.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture601.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array12 = new Float32Array([0.0, -0.5, -0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, -0.75, 0.75, -0.75, -0.25, -0.25, -0.25, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, 0.5, 0.75, 0.5, -1.0, 0.75, 1.0, 0.75, 1.0, 0.25, 1.0, -1.0, 0.0, -0.5, 1.0, -0.25, 0.75, 0.25, -1.0, -0.25, 0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 0.0, -0.25, -1.0, 0.5, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.75, 0.0, -1.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.25, 0.75, -0.5, 1.0, 0.0, -0.25, -1.0, -0.25, 0.75, 0.5, 0.75, 0.25, -1.0, 0.0, 0.5, 1.0, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, 1.0, -0.75, -1.0, -0.25, ]);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer600.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.insertDebugMarker("mymarker");
    
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
    
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    device90.destroy();
    device70.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    device00.destroy();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-1.0, -1.0, -0.75, -0.25, -0.5, 1.0, 0.25, 1.0, 0.25, -0.75, -1.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.75, -0.5, 0.5, -0.25, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 0.75, -0.25, 0.5, -1.0, -0.25, 0.0, -0.5, -0.25, -0.25, 0.75, 0.75, 0.0, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.25, 0.75, 0.0, -0.25, -1.0, -0.75, -0.25, -0.75, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, -0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, 0.75, 0.75, 0.5, 0.0, -1.0, -0.75, -0.5, -1.0, 1.0, 0.25, -0.75, 0.0, 0.25, ]);
    const texture_view6031 = texture603.createView({ label: "texture_view6031" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer601.destroy()
    
    device80.pushErrorScope("validation");
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const array14 = new Float32Array([-1.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, 0.5, 0.75, 0.0, 0.0, 0.75, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 0.0, -0.5, -0.75, -0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 0.75, -0.75, 0.75, -0.25, -1.0, -0.5, 1.0, -0.25, -0.25, -0.75, -0.25, -0.25, 0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.25, -0.5, -0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 0.25, -0.25, -0.75, 0.5, -0.5, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 0.25, 0.5, -1.0, -1.0, 0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, 1.0, 0.25, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    render_bundle_encoder600.setPipeline(render_pipeline603);
    
    command_encoder800.insertDebugMarker("mymarker");
    const command_buffer800 = command_encoder800.finish();
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.insertDebugMarker("mymarker");
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    device60.queue.writeTexture({ texture: texture602 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer603.destroy()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    buffer602.destroy()
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeTexture({ texture: texture604 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture604 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    query801.destroy()
    const command_buffer801 = command_encoder801.finish();
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6031,
            },
        ],
        occlusionQuerySet: query600
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module800,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pass_encoder6011 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6011" });
    
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture605 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device60.pushErrorScope("validation");
    render_pass_encoder6010.setPipeline(render_pipeline603);
    texture605.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device60.queue.writeTexture({ texture: texture603 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module603,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module603,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder802.resolveQuerySet(
        query800,
        0,
        32,
        buffer800,
        0
    )
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    render_pass_encoder6000.setPipeline(render_pipeline604);
    render_pass_encoder6010.pushDebugGroup("group_marker");
    query601.destroy()
    device100.queue.writeBuffer(buffer1000, 0, array10, 0, array10.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6011.insertDebugMarker("marker")
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: query800
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query1000.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder6011.pushDebugGroup("group_marker")
    device60.queue.writeTexture({ texture: texture604 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture603 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder6010.beginOcclusionQuery(0)
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    device60.queue.writeTexture({ texture: texture604 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer604, 0, array12, 0, array12.length);
    device100.queue.writeTexture({ texture: texture1000 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    render_bundle_encoder601.setPipeline(render_pipeline604);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_pass_encoder6000.setViewport(0, 0, texture603.width / 2, texture603.height / 2, 0, 1);
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    render_pass_encoder6010.setViewport(0, 0, texture603.width / 2, texture603.height / 2, 0, 1);
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group601);
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    buffer607.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture802 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6010.setViewport(0, 0, texture603.width / 2, texture603.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    render_bundle_encoder601.insertDebugMarker("marker");
    compute_pass_encoder10000.setPipeline(compute_pipeline1000);
    query800.destroy()
    device60.queue.writeTexture({ texture: texture604 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: query601
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6020.setPipeline(render_pipeline603);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const render_pass_encoder8021 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query800
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer605, 0, array8, 0, array8.length);
    device60.queue.writeTexture({ texture: texture604 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module605,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module605,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder6020.setViewport(0, 0, texture603.width / 2, texture603.height / 2, 0, 1);
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer608, 0, array12, 0, array12.length);
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture604 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.popDebugGroup();
    
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device60.queue.writeBuffer(buffer608, 0, array9, 0, array9.length);
    device80.destroy();
    device60.queue.writeTexture({ texture: texture604 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: query601
    });
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6010.insertDebugMarker("marker");
    const render_pass_encoder6011 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture1001.destroy();
    device60.queue.submit([]);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer606.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer606.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer606.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module604,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module604,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device60.queue.writeBuffer(buffer608, 0, array3, 0, array3.length);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group602);
    device60.queue.writeBuffer(buffer608, 0, array1, 0, array1.length);
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder6010.setVertexBuffer(0, buffer606);
    
    render_pass_encoder6011.setPipeline(render_pipeline605);
    device110.queue.writeTexture({ texture: texture1100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    render_pass_encoder6001.setStencilReference(1);
    render_pass_encoder6001.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6023 = texture602.createView({ label: "texture_view6023" });
    render_pass_encoder6011.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    command_encoder602.copyTextureToTexture(
        {
            texture: texture604
        },
        {
            texture: texture602
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device60.queue.writeBuffer(buffer608, 0, array9, 0, array9.length);
    
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder6020.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    device60.queue.writeBuffer(buffer608, 0, array14, 0, array14.length);
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6011.setStencilReference(1);
    
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
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline605.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_pass_encoder6011.setBindGroup(0, bind_group603);
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    render_pass_encoder6010.setStencilReference(1);
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture604 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("out-of-memory");
    const command_buffer602 = command_encoder602.finish();
    buffer1100.destroy()
    buffer6012.destroy()
    
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group604);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6020.setVertexBuffer(0, buffer607);
    render_pass_encoder6010.drawIndirect(buffer6013, 0);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group605);
    render_pass_encoder6010.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder6020.drawIndirect(buffer606, 0);
    render_pass_encoder6010.endOcclusionQuery()
    render_pass_encoder6011.setVertexBuffer(0, buffer606);
    compute_pass_encoder6011.popDebugGroup()
    render_pass_encoder6001.setPipeline(render_pipeline602);
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    render_pass_encoder6001.setBindGroup(0, bind_group606);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: compute_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1002,
                },
            },
        ],
    });

    compute_pass_encoder10000.setBindGroup(0, bind_group1000);
    render_pass_encoder6011.drawIndirect(buffer607, 0);
    render_pass_encoder6010.end();
    render_pass_encoder6011.end();
    render_pass_encoder6011.draw(3);
    render_pass_encoder6000.setVertexBuffer(0, buffer602);
    render_pass_encoder6000.setIndexBuffer(buffer6015, "uint16");
    render_pass_encoder6000.drawIndexed(3);
    const uint32_10000 = new Uint32Array(3);

    uint32_10000[0] = 100;
    uint32_10000[1] = 1;
    uint32_10000[2] = 1;

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device100.queue.writeBuffer(buffer1003, 0, uint32_10000, 0, uint32_10000.length);

    compute_pass_encoder10000.dispatchWorkgroupsIndirect(buffer1003, 0);
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder6001.setVertexBuffer(0, buffer600);
    render_pass_encoder6020.end();
    render_pass_encoder6001.draw(3);
    compute_pass_encoder10000.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6001.end();
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder6000.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6010.draw(3);
    render_pass_encoder6000.drawIndirect(buffer602, 0);
    device60.queue.submit([command_buffer602, ]);
    device110.queue.submit([]);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6020.setIndexBuffer(buffer6017, "uint16");
    const command_buffer1000 = command_encoder1000.finish();
    render_pass_encoder6011.popDebugGroup();
    render_pass_encoder6010.drawIndirect(buffer603, 0);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder6000.end();
    render_pass_encoder6001.end();
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1005 = device100.createBuffer({
        label: "buffer1005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1001 = device100.createBindGroup({
        label: "bind_group1001",
        layout: compute_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1005,
                },
            },
        ],
    });

    compute_pass_encoder10000.setBindGroup(0, bind_group1001);
    compute_pass_encoder10000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder6000.end();
    compute_pass_encoder10000.dispatchWorkgroups(100);
    render_pass_encoder8020.setPipeline(render_pipeline800);
    const buffer1006 = device100.createBuffer({
        label: "buffer1006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1007 = device100.createBuffer({
        label: "buffer1007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1002 = device100.createBindGroup({
        label: "bind_group1002",
        layout: compute_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1007,
                },
            },
        ],
    });

    compute_pass_encoder10000.setBindGroup(0, bind_group1002);
    device100.queue.submit([]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
    device70.queue.submit([]);
    compute_pass_encoder6011.popDebugGroup()
    render_pass_encoder6010.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6020.drawIndirect(buffer608, 0);
}