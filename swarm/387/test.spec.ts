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
    
    
    const array0 = new Float32Array([-1.0, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, 0.0, -0.5, 0.25, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, -0.75, -1.0, 0.0, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, -0.5, -0.75, 0.0, 0.5, -1.0, -0.5, 0.5, 0.75, -0.25, -1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.75, -1.0, 0.0, 0.0, 0.5, -0.5, 0.5, 0.5, 1.0, -0.75, 1.0, 0.0, 0.25, -0.5, -0.75, 0.75, ]);
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    
    const array1 = new Float32Array([-0.25, -0.75, 0.0, 0.0, -0.25, -0.75, -0.25, 1.0, 1.0, 1.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.0, -0.75, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, 1.0, -0.25, 1.0, 0.25, 1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, -0.75, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 0.75, 1.0, -0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, -1.0, -0.75, 0.75, -0.5, 1.0, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.75, 1.0, 0.75, -1.0, 0.25, 0.75, 0.25, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    texture000.destroy();
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([1.0, 0.5, 0.0, -1.0, 0.5, 0.75, 0.5, -0.5, 0.0, 1.0, 0.0, 0.0, -0.5, 1.0, -1.0, -0.75, -1.0, -0.75, 0.25, 0.75, 0.75, -1.0, 1.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, 0.25, -0.75, -0.25, 0.75, -1.0, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, -0.75, 0.5, -1.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -1.0, 0.25, -0.75, -1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.75, 0.0, -1.0, -1.0, -0.75, 0.75, 0.75, -0.5, 0.0, 0.25, 0.25, -1.0, 0.25, 0.75, -0.75, 0.5, 0.5, -0.5, 1.0, -0.75, 0.25, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array3 = new Float32Array([-0.25, -0.75, 0.75, -0.25, -0.75, -0.5, 1.0, -1.0, -0.5, 0.5, 0.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 0.25, 0.75, -1.0, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, -1.0, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, -0.25, -0.75, -0.75, -0.25, -0.25, 0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.25, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, -0.75, -0.5, 0.75, -0.75, 0.5, 0.25, 0.0, 0.0, 1.0, 1.0, -1.0, -1.0, -0.75, -0.25, 0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, 0.25, -1.0, 0.5, ]);
    
    
    const array4 = new Float32Array([-1.0, 0.0, -0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.75, -0.5, 1.0, 0.75, 0.0, -0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, 1.0, 0.25, 1.0, -0.75, 0.25, 1.0, -0.25, 1.0, 0.75, -0.5, -0.5, 0.0, -0.75, 0.25, -1.0, 0.25, 0.0, -1.0, 0.75, -1.0, -0.5, -0.5, -0.25, 0.0, -0.75, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, 1.0, -0.75, 0.75, 0.0, -0.5, 0.75, 0.5, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, 0.5, -0.25, 0.25, -0.5, 0.5, -0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 0.0, 0.0, -0.5, 0.5, -0.25, ]);
    const array5 = new Float32Array([0.5, 1.0, 0.75, -0.75, 1.0, 0.0, -0.75, -1.0, -0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.75, 0.5, -1.0, -1.0, -1.0, -0.25, -1.0, 0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, 0.5, -1.0, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.25, -0.5, -0.5, 0.75, -0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -1.0, 0.75, 0.75, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer200.destroy()
    
    
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    buffer300.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture201.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
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
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
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
    buffer201.destroy()
    
    
    device40.destroy();
    
    
    
    device20.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device50.destroy();
    
    const array6 = new Float32Array([0.5, 0.25, 1.0, -1.0, 0.75, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.0, 0.75, 0.75, -0.75, -1.0, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.5, -0.25, 0.0, 0.75, 0.25, -1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.5, 0.0, 1.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.25, -0.25, -0.75, 0.75, 0.5, 1.0, -1.0, 0.75, -0.25, -0.5, -1.0, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.75, -0.5, -1.0, 0.0, -0.5, -0.75, -0.5, -0.25, 1.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.25, -0.5, 0.75, 0.75, ]);
    
    
    
    
    
    const array7 = new Float32Array([0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, -1.0, 1.0, 0.0, -1.0, 0.5, -1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -1.0, 0.75, 0.25, 0.75, 0.5, -1.0, -0.5, -0.5, 0.5, 0.5, -0.75, 0.25, 0.75, 1.0, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, 0.0, -1.0, -0.75, 0.0, 0.75, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 0.0, -0.25, -1.0, -0.5, 0.25, 0.75, 0.5, 1.0, 0.0, -1.0, 0.0, -0.5, 0.5, -0.5, 0.75, 0.75, -0.25, 0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.75, 0.25, 0.5, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, -0.5, 0.0, ]);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.destroy();
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder702.pushDebugGroup("group_marker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    buffer701.destroy()
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    
    
    device70.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const array8 = new Float32Array([0.0, 0.5, -0.75, 0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 0.5, -0.25, 0.0, -0.25, 0.75, 0.25, -0.25, -0.75, -0.25, 0.75, -0.75, 1.0, -0.75, 0.0, 0.75, -0.25, 0.75, -0.5, 0.0, -0.25, -0.5, -0.25, -0.75, 0.75, 1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -0.25, -1.0, -1.0, -0.25, -0.25, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, -0.5, 0.5, -0.25, 1.0, -0.5, 0.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.75, -1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.5, 0.25, 0.5, -1.0, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, 0.0, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const array9 = new Float32Array([0.5, 0.5, 1.0, 1.0, -0.75, -1.0, 0.25, 0.75, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, -0.75, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, 1.0, 0.75, 0.25, 0.75, 0.75, -1.0, -0.25, -0.75, -0.25, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -0.75, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, 1.0, -1.0, 0.5, -0.25, 0.5, -0.5, 0.5, -1.0, 1.0, -0.25, 0.0, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, -1.0, 0.0, -0.5, 0.5, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 0.0, 0.75, ]);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.25, 0.0, -1.0, 0.25, 0.0, -1.0, 0.75, -0.5, -1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -0.75, -0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.0, 1.0, 0.0, -1.0, 1.0, 1.0, -0.5, -1.0, -0.25, -0.25, 0.25, -0.75, -0.75, -0.5, 0.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, -0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.75, -1.0, -1.0, 0.0, -0.25, 0.5, 0.25, 0.5, 0.5, -0.75, 0.75, 0.5, 0.5, -0.75, -0.5, -0.75, -0.75, 1.0, 0.75, 1.0, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, -1.0, 0.5, -0.5, ]);
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    buffer1000.destroy()
    
    
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    
    
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    buffer901.destroy()
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view10002 = texture1000.createView({ label: "texture_view10002" });
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    
    
    
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    texture1001.destroy();
    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer900.destroy()
    const texture_view10003 = texture1000.createView({ label: "texture_view10003" });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device100.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const array11 = new Float32Array([0.0, -0.25, -0.5, -0.5, 0.75, 0.5, 0.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.5, 0.0, -0.5, 1.0, 0.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.75, -0.5, -1.0, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, -1.0, -0.75, -1.0, 1.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 1.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.0, 0.0, 0.25, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.75, 0.75, -0.5, ]);
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    
    const array12 = new Float32Array([-0.25, -0.25, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, -0.75, 1.0, -1.0, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, -0.5, 0.25, 1.0, -0.5, -0.5, -1.0, 0.5, -0.5, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, 1.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, 0.5, 0.75, -0.75, 1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 0.75, 0.5, 0.25, -0.5, -0.75, -0.25, -0.25, -1.0, 1.0, -0.5, 0.25, 0.0, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, -0.25, -0.5, -1.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.75, -0.75, -0.75, -1.0, -0.25, 1.0, 1.0, ]);
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
    device120.destroy();
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    device110.destroy();
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array13 = new Float32Array([1.0, -1.0, 0.0, -0.5, -0.25, 0.5, 0.75, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 1.0, -0.25, -0.75, -0.25, 0.0, -0.75, 0.75, 1.0, -1.0, -0.5, -1.0, -0.75, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 0.5, 0.5, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, -0.25, -0.25, 1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, -1.0, -1.0, 0.25, -0.5, -0.75, 0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 0.25, -0.25, 0.5, 0.5, -0.25, 0.5, -0.75, -0.75, 0.25, 0.25, -1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.0, 0.25, -0.75, 0.5, 1.0, 0.5, -1.0, -0.75, -0.75, ]);
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    device80.destroy();
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    
    
    buffer1301.destroy()
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device130.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    
    
    const array14 = new Float32Array([0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 1.0, -0.25, -0.75, -0.25, 0.0, 0.25, -0.5, -0.5, 0.75, -1.0, 0.75, 0.75, 0.5, 0.25, -0.25, 0.75, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.5, 1.0, 1.0, 1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.5, -0.25, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.25, 0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 0.0, 0.25, -1.0, 1.0, 0.25, -0.5, ]);
    
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder1401.insertDebugMarker("marker");
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder1401.pushDebugGroup("group_marker");
    
    
    
    buffer1402.destroy()
    
    const array15 = new Float32Array([-0.5, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, -0.25, 0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.0, -1.0, 0.0, 0.75, -0.75, -0.25, -0.75, 1.0, -0.25, -0.5, 0.75, -0.75, 1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 1.0, 0.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, -0.75, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.75, -0.25, 1.0, -0.25, -0.75, -1.0, -0.5, 1.0, 1.0, -0.5, -0.75, ]);
    
    
    
    
    
    
    
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    
    
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer1400.destroy()
    
    
}