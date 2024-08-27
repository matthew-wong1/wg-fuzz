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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    texture000.destroy();
    
    query000.destroy()
    
    
    
    device00.destroy();
    
    const array0 = new Float32Array([-0.5, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, 0.75, 0.25, 0.75, -0.5, 0.5, -0.25, 0.25, -0.75, -0.75, -0.25, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 1.0, 0.5, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.75, -0.25, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 0.25, 0.5, 0.25, 0.75, 1.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.75, 0.75, 0.5, 0.0, 0.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.5, -1.0, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, 0.25, 0.25, 1.0, -1.0, -0.5, ]);
    
    const array1 = new Float32Array([-1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -0.25, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, -0.25, 0.75, -0.5, -1.0, 0.5, -0.75, -1.0, 0.5, 0.0, -0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 0.0, -0.25, 1.0, 0.0, -0.75, -1.0, 0.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.25, 0.5, 0.75, 0.0, 0.5, 0.75, -0.5, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -0.25, 0.75, -0.5, 0.5, -0.5, -0.25, 0.0, -0.25, 0.75, -1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.25, -1.0, 0.75, -0.5, 0.75, 0.5, -0.75, 0.75, -0.25, 1.0, -0.5, 1.0, 0.25, 0.5, 1.0, 0.25, -1.0, -0.75, -1.0, ]);
    render_bundle_encoder000.popDebugGroup();
    
    const array2 = new Float32Array([1.0, -1.0, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, -0.25, 0.75, -1.0, -0.5, 0.5, 0.5, -0.75, 0.75, -1.0, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.75, -0.25, -0.25, -1.0, 0.0, 0.5, -0.5, 0.5, -1.0, 0.0, -0.25, 0.75, 0.75, 0.75, 0.25, -0.75, -0.5, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 0.0, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, 0.25, 0.0, 0.75, -1.0, 0.5, -1.0, -1.0, 0.75, 0.5, 0.0, 0.5, 0.5, 1.0, 0.75, 0.75, 1.0, 0.25, -0.5, -0.75, -1.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.75, 0.25, -0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.5, -0.75, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const array3 = new Float32Array([1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.5, 1.0, -0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.5, -1.0, -0.25, 0.25, -0.25, 0.75, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 0.75, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -0.75, 0.75, -1.0, -0.75, 0.0, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.75, 0.25, -1.0, -0.5, 0.75, 1.0, 1.0, -0.5, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, 0.75, -1.0, -0.5, -0.5, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.75, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, -1.0, -0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.5, 0.75, 0.0, -0.5, -0.25, -0.25, -0.5, 0.75, -0.75, 0.5, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, -0.75, -1.0, -0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, 0.5, 0.0, -0.5, -0.25, 0.25, -0.75, -0.25, 1.0, -0.5, 0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -0.75, -0.75, -0.5, -0.25, -0.25, -1.0, 0.25, 0.75, 0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, -0.75, 0.5, -1.0, -0.5, 0.5, 0.5, ]);
    
    const array5 = new Float32Array([-0.5, -0.25, 0.75, 0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.25, 0.75, 1.0, 0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.25, -0.75, -1.0, -0.75, 0.75, -1.0, 0.5, -1.0, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, -0.5, 0.5, 0.0, 0.5, 0.5, -1.0, 0.75, -0.25, -0.5, 0.75, -0.75, -0.5, -0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.5, 0.25, 0.0, -0.25, 0.5, 0.25, 0.5, 1.0, 1.0, -0.25, 0.0, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, 0.5, -0.75, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const array6 = new Float32Array([1.0, 0.25, 0.5, -0.75, 0.5, -0.25, 1.0, 0.25, 0.0, -0.75, -0.25, 0.0, -0.75, -0.5, -1.0, -0.25, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.75, -0.75, -0.25, 0.0, 0.0, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, -1.0, -1.0, 0.75, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -0.25, 0.0, -0.75, 0.75, 0.75, 0.5, -0.75, 0.5, 0.25, -1.0, -0.5, 1.0, 1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, -1.0, 0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const array7 = new Float32Array([0.5, 0.25, 0.75, 0.25, -0.25, 0.0, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 0.25, -0.75, -0.25, 1.0, 1.0, 0.0, 0.5, 0.0, 1.0, -0.75, 0.25, -0.5, -0.25, 0.5, 1.0, 0.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 0.5, 1.0, 0.75, -0.75, 0.0, -0.5, 1.0, 0.0, 0.25, -0.75, -0.5, 0.75, -0.5, -0.25, 0.5, 0.25, -0.5, 0.25, -0.75, -1.0, 1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.75, 0.0, 0.0, -0.5, 0.25, -0.5, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.0, -1.0, 1.0, 0.25, -1.0, 1.0, -0.25, -1.0, 0.25, -1.0, -0.25, -0.25, 0.25, -0.25, 0.75, 1.0, 0.0, 0.5, 0.75, -0.25, 0.5, -0.5, 0.5, 0.5, -0.75, 0.75, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture200.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array8 = new Float32Array([1.0, -0.25, 0.25, 1.0, -0.25, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, 0.75, -0.75, -0.5, -1.0, 0.5, 0.25, 0.0, 0.5, 1.0, 0.25, -0.25, 0.0, 0.25, -0.75, 0.5, -0.75, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, 0.5, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, 0.5, -0.25, 0.25, -0.5, -0.25, 0.25, -0.5, 1.0, -1.0, 0.0, 0.5, -1.0, -1.0, 1.0, 1.0, 0.25, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.5, -0.25, 1.0, -0.25, 0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.75, -0.25, 0.25, 0.0, -0.5, -1.0, 0.5, -0.75, -0.75, -0.75, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([-1.0, -0.5, -0.5, -0.25, -0.75, -0.5, 0.5, -0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.0, 0.5, -0.75, 0.25, -0.5, 1.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.5, 0.0, -0.5, -0.75, 0.25, -0.25, -0.75, 0.0, -0.5, -0.75, 1.0, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.75, 0.5, 0.25, -0.25, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, -0.5, -0.5, -0.25, -0.5, -0.25, -1.0, -1.0, -0.25, 1.0, 0.25, 0.75, 0.5, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, 0.25, 0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 1.0, -0.75, ]);
    
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array10 = new Float32Array([1.0, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -1.0, -0.25, 0.5, 0.0, 1.0, -0.25, 0.5, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, -1.0, -0.25, -0.75, 0.5, -1.0, -0.25, -0.75, -0.25, -0.5, -1.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, 1.0, 0.0, -0.75, -0.25, 0.0, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, -0.25, 0.25, -0.5, -0.5, -0.25, 0.75, 0.5, -0.25, -1.0, 0.25, -0.5, -1.0, 1.0, -1.0, 0.25, 0.0, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, -0.5, 0.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 0.0, -0.75, 0.25, -1.0, -0.5, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array11 = new Float32Array([0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, 0.25, -0.5, 1.0, 0.0, -0.75, 0.0, -0.5, -0.75, 0.25, 0.0, 0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 0.75, 1.0, -1.0, -0.75, -0.25, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, -1.0, 0.5, -1.0, 0.25, 0.5, -0.5, 0.25, 0.75, -0.75, 0.25, -1.0, 0.25, 0.75, -0.75, 0.5, 1.0, 1.0, -0.75, 1.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 0.5, 0.5, 0.75, -0.75, 0.0, -0.25, 0.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, -0.5, -0.5, -1.0, ]);
    render_bundle_encoder201.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.pushErrorScope("validation");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer200.destroy()
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    device20.pushErrorScope("internal");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer202.destroy()
    query201.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder300.insertDebugMarker("mymarker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.pushErrorScope("validation");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    query201.destroy()
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    query200.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer205
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    buffer204.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_pass_encoder2000.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.popDebugGroup()
    buffer205.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    buffer208.destroy()
    render_bundle_encoder200.setVertexBuffer(0, buffer206);
    render_pass_encoder2000.setPipeline(render_pipeline202);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer201.destroy()
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer301.destroy()
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    query300.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    texture300.destroy();
    render_pass_encoder2000.setStencilReference(1);
    
    
    render_pass_encoder2001.setPipeline(render_pipeline204);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    query202.destroy()
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    render_pass_encoder2001.setStencilReference(1);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer203.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    query202.destroy()
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
    buffer100.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.insertDebugMarker("marker");
    query200.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder200.drawIndirect(buffer203, 0);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder2000.setStencilReference(1);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder2000.setVertexBuffer(0, buffer206);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    buffer209.destroy()
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    query200.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    query202.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    texture201.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    query204.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    buffer2011.destroy()
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    
    render_bundle_encoder201.setVertexBuffer(0, buffer2010);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer207.destroy()
    buffer2010.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer2012, 0, array2, 0, array2.length);
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setIndexBuffer(buffer205, "uint16");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    query204.destroy()
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query205
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query200.destroy()
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2013,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder2010.setStencilReference(1);
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer208,
        0
    )
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer2010,
        0
    )
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder2001.popDebugGroup();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2013,
            },
        ],
        occlusionQuerySet: query203
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    command_encoder201.copyBufferToBuffer(
        buffer209,
        0,
        buffer209,
        0,
        400
    );
    query202.destroy()
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder2010.setPipeline(render_pipeline202);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query203.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.drawIndirect(buffer203, 0);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    query205.destroy()
    query300.destroy()
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2001.setVertexBuffer(0, buffer206);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    compute_pass_encoder3010.setPipeline(compute_pipeline303);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    device20.queue.writeBuffer(buffer2012, 0, array1, 0, array1.length);
    render_pass_encoder2002.setPipeline(render_pipeline202);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setPipeline(render_pipeline205);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder2000.end();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer2012.destroy()
    buffer305.destroy()
    buffer207.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.popDebugGroup();
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder202.setVertexBuffer(0, buffer207);
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder203.setPipeline(render_pipeline202);
    
    device20.queue.writeBuffer(buffer2010, 0, array4, 0, array4.length);
    render_bundle_encoder202.drawIndirect(buffer203, 0);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer2011,
        0
    )
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    render_pass_encoder2002.insertDebugMarker("marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder2002.setStencilReference(1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    buffer302.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder202.popDebugGroup();
    
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer306, 0);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2002.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    command_encoder303.popDebugGroup()
    compute_pass_encoder3010.end();
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder2020.setVertexBuffer(0, buffer209);
    const command_buffer303 = command_encoder303.finish();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group206);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer208);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder3000.end();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group207);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2011.setVertexBuffer(0, buffer206);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    const command_buffer300 = command_encoder300.finish();
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device40.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2010.draw(3);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2002.setBindGroup(0, bind_group208);
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3020.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2002.setVertexBuffer(0, buffer2018);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2002.drawIndirect(buffer203, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2002.drawIndirect(buffer204, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2002.end();
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2002.draw(3);
    command_encoder200.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    const command_buffer200 = command_encoder200.finish();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3013, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2002.end();
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2002.draw(3);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2015, "uint16");
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2002.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2002.setIndexBuffer(buffer204, "uint16");
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    render_pass_encoder2002.popDebugGroup();
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
    compute_pass_encoder3000.end();
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3024, 0);
    render_pass_encoder2001.end();
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group308);
    render_pass_encoder2020.end();
    render_pass_encoder2010.popDebugGroup();
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group309);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2002.draw(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3020.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3031, 0);
    device30.queue.submit([command_buffer302, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2002.end();
}