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
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    device10.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
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
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device20.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    const array0 = new Float32Array([1.0, -0.5, 0.25, 0.75, -0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, 0.75, 0.75, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 0.75, -0.75, 0.75, 1.0, -1.0, 0.75, 0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.0, -0.75, 1.0, 1.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.25, -1.0, -0.5, ]);
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([0.5, 0.0, -0.5, -0.75, 0.25, 1.0, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, -0.5, 0.5, -0.25, 0.5, 0.75, 1.0, 0.75, 1.0, -0.75, 0.0, 0.25, -0.75, -0.5, 0.25, 0.0, 0.75, 0.25, 0.0, -0.25, -0.5, -1.0, 0.25, 0.5, 1.0, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, -0.75, 0.5, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.25, 0.5, -1.0, 0.0, 0.5, -0.25, -0.25, -0.25, -1.0, 0.5, -0.5, 0.0, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, -0.25, -1.0, 0.25, -0.25, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, -0.5, 0.0, -0.75, -0.5, -0.5, -0.5, 1.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.5, 1.0, -0.25, -0.25, -0.5, -0.75, 0.0, ]);
    
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.5, 0.75, 0.0, -0.75, 0.5, -1.0, -1.0, 0.5, 0.75, -0.75, 1.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 0.25, 1.0, 0.25, 0.0, -0.5, -0.75, 0.25, -0.25, -0.75, -0.75, -0.25, 0.75, 0.25, 0.0, -0.25, 0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.0, 0.5, -0.25, 0.0, -1.0, -0.5, 0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, 0.25, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.5, 0.0, -1.0, -0.5, 0.5, 0.0, -0.5, 1.0, ]);
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query300.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer301.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture000.destroy();
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    buffer300.destroy()
    
    query500.destroy()
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([0.0, -0.5, 0.5, -0.5, 0.5, 0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.5, -0.75, 1.0, 0.25, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.25, 1.0, 1.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.0, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, 0.25, 0.0, -0.75, -0.75, -0.5, -0.5, -1.0, 0.75, 0.25, -0.75, -0.25, -0.25, -0.5, -0.75, -1.0, 0.0, -0.5, -1.0, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, 0.25, 0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -1.0, 1.0, 0.5, 0.25, -0.5, -0.5, -0.5, 1.0, 0.0, -0.5, -0.75, -0.5, -0.5, 1.0, -1.0, 1.0, -0.75, 0.0, 0.75, -0.5, 0.25, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer501.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer305.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    texture400.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture401.destroy();
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device30.destroy();
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    device40.destroy();
    
    query500.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const array4 = new Float32Array([0.5, -0.5, 0.0, 0.75, 1.0, -0.5, 0.75, 0.0, -0.5, 1.0, -1.0, -0.25, 0.75, 0.0, -0.25, 0.75, 1.0, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.75, 0.5, -0.5, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, 0.0, -0.25, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, -1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 0.25, -1.0, -0.75, -1.0, -0.5, 0.0, 1.0, -0.25, 0.75, -0.25, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.75, 0.0, -0.75, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.25, 0.25, 1.0, 0.25, 1.0, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture500.destroy();
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
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
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture600.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    
    buffer500.destroy()
    texture700.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer503.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    query502.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query501.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.destroy();
    device50.destroy();
    device80.destroy();
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
        powerPreference: "high-performance"
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer700.destroy()
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device70.destroy();
    
    
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
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer1100.destroy()
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    query1100.destroy()
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
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
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    texture1201.destroy();
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    buffer1200.destroy()
    
    
    query1100.destroy()
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const array5 = new Float32Array([0.0, -0.5, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 1.0, -0.75, -1.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, -0.75, 0.5, 0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.25, -0.25, -1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 1.0, 1.0, -0.5, 0.0, -0.5, 0.0, -1.0, -0.5, -0.75, -1.0, 0.75, 0.75, -0.75, 0.0, 0.5, 1.0, -0.75, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 0.25, ]);
    
    
    const texture_view12020 = texture1202.createView({ label: "texture_view12020" });
    device120.queue.writeTexture({ texture: texture1202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    query1101.destroy()
    
    device110.destroy();
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    
    
    
    const texture_view12021 = texture1202.createView({ label: "texture_view12021" });
    query1200.destroy()
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture_view12022 = texture1202.createView({ label: "texture_view12022" });
    const array6 = new Float32Array([0.0, 0.0, 0.5, -0.5, 0.75, -1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.25, 0.5, 0.5, -0.75, -0.75, 0.5, 0.5, 0.25, 1.0, 0.75, 0.25, -0.5, 0.75, -1.0, 0.0, 0.0, 0.25, -0.5, 0.75, 0.5, -0.25, -1.0, -0.25, -0.25, -0.75, 1.0, 1.0, 1.0, -1.0, 1.0, 0.0, 1.0, -0.5, 0.75, -0.75, -1.0, 0.5, -1.0, 0.75, 1.0, -0.75, -0.5, 0.0, -0.25, 0.75, 0.0, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, -1.0, 1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.0, 1.0, -0.75, 0.5, 1.0, 0.25, 1.0, -0.5, -0.25, ]);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query1201.destroy()
    
    device120.queue.writeTexture({ texture: texture1202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    buffer900.destroy()
    
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
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    device120.queue.writeTexture({ texture: texture1202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1200.destroy();
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([0.75, 0.25, 0.5, -0.5, 0.75, -0.5, 0.75, 1.0, 0.0, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, 1.0, -1.0, 0.25, 0.75, 1.0, 0.5, -0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 0.5, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, -1.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.5, 0.0, 0.5, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 0.75, -0.75, -0.25, 0.5, 1.0, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, ]);
    
    texture1202.destroy();
    
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    
    
    
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    query1201.destroy()
    buffer1201.destroy()
    
    
    device90.destroy();
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    buffer1202.destroy()
    
    
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device120.destroy();
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array8 = new Float32Array([0.0, -0.25, 1.0, -0.75, -0.25, 0.75, -1.0, 0.25, -0.75, 1.0, 0.25, 0.0, 1.0, 0.75, 0.0, -0.5, -0.25, 0.0, -0.25, -0.5, 1.0, -0.25, -0.25, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -0.5, 0.5, -0.5, -1.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.25, -0.5, 0.0, 0.0, 0.5, -0.5, 0.75, 0.5, -1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, 0.0, -1.0, 0.75, 0.75, 0.0, -0.25, 1.0, 1.0, -0.25, -0.5, -0.75, -0.25, 1.0, 0.0, 0.0, -0.75, 1.0, -0.5, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, ]);
    
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device100.destroy();
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.75, 0.5, -1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 1.0, -0.5, -0.75, 0.25, 0.0, 0.75, 0.25, -0.5, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.75, 0.5, -0.75, 0.0, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, 0.0, -1.0, 1.0, 0.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.5, 0.0, 0.5, 0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.25, 0.5, 0.25, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 1.0, 1.0, -1.0, 0.5, ]);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    const array10 = new Float32Array([-0.5, 0.25, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, 0.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.0, -0.5, -0.5, 0.0, 0.0, -1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, -1.0, 0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, 0.75, -0.5, 0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 0.0, ]);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    
    
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1301.destroy();
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout1303 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1303",
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
    
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.75, 0.0, 1.0, -0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.5, 0.75, 0.0, 0.25, -0.75, 0.75, -0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, -0.25, 0.25, -0.75, -1.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 1.0, -1.0, -0.75, -0.5, 0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -1.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 0.0, 0.5, -0.75, ]);
    
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    
    device130.queue.writeBuffer(buffer1300, 0, array5, 0, array5.length);
    device130.queue.writeBuffer(buffer1300, 0, array11, 0, array11.length);
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    
    buffer1300.destroy()
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
}