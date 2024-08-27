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
    const array0 = new Float32Array([1.0, -0.5, -0.75, -0.25, 1.0, -0.25, -1.0, 0.75, -0.25, 0.25, -0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 1.0, 0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, -0.5, 0.25, 0.25, 0.5, 0.25, -0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.25, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, -0.75, -1.0, -0.75, -1.0, 0.0, -0.5, -1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, 1.0, -0.25, 0.75, -0.25, 1.0, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 1.0, ]);
    const array1 = new Float32Array([0.0, -1.0, -0.75, 1.0, 0.75, 0.0, 0.25, -0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, 1.0, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.75, 1.0, 0.25, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.75, 0.0, 0.5, -1.0, -0.75, 0.25, -0.5, 0.0, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.25, 0.5, 0.0, -1.0, -0.75, 0.0, 0.0, -0.5, 0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 0.25, 0.25, 0.5, -0.5, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, 0.5, -1.0, -0.25, -0.5, 0.0, 0.0, 0.25, -0.75, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, 1.0, 0.25, 0.25, -0.5, 0.5, 1.0, ]);
    const array2 = new Float32Array([0.75, -0.5, 1.0, -0.75, 1.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.0, 0.0, 1.0, 0.75, -0.5, -0.5, -1.0, -0.25, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, 0.5, 0.5, 0.0, -0.75, 0.25, 0.25, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -0.5, 0.25, 0.0, 0.75, -0.25, 0.25, -0.25, -1.0, -0.75, -0.5, -0.5, 0.25, 0.0, 0.5, -1.0, -0.75, 0.25, -1.0, 0.5, -0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.0, ]);
    const array3 = new Float32Array([1.0, 0.75, -0.5, -0.25, 0.25, 0.0, -0.25, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, 0.75, 0.25, 0.5, -0.25, -0.75, 0.75, 1.0, -0.75, -1.0, 0.75, -0.5, 0.75, 0.5, 0.0, -0.5, 1.0, 0.5, -0.25, -0.5, -0.25, 1.0, -1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 0.25, -1.0, 1.0, 0.75, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -0.25, 1.0, -1.0, -0.25, 0.25, -0.25, 0.5, 0.0, 1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.0, 1.0, 0.75, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, 1.0, 0.75, -1.0, -0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    device10.pushErrorScope("validation");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const array4 = new Float32Array([1.0, -0.75, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -1.0, -0.5, 0.5, 0.0, -1.0, 0.5, -0.5, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, 0.25, 0.5, 0.5, -0.5, 0.75, -0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 0.5, -0.75, 0.5, -0.75, 0.0, 0.5, -0.5, -0.75, -0.75, 0.0, 0.0, -0.75, 1.0, -0.25, 0.25, 0.0, 0.25, -0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 0.25, -0.75, -1.0, -1.0, 0.25, -1.0, ]);
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.submit([]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    
    
    
    device20.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    device50.queue.submit([]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("internal");
    device50.destroy();
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    buffer301.destroy()
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    
    device30.pushErrorScope("internal");
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    texture401.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    buffer300.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    texture400.destroy();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const array5 = new Float32Array([0.75, 0.5, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.0, -1.0, -0.75, -0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.5, -0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.25, -0.5, 0.0, -0.5, 0.75, 1.0, 0.5, 1.0, -0.75, -0.5, -0.75, -0.5, 0.0, 0.5, 0.0, -1.0, -1.0, 0.0, -0.75, 0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.75, -0.75, -0.75, -0.75, 0.75, 0.25, 0.25, -0.5, -0.5, 0.25, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, 0.0, 0.25, -0.5, -0.5, -0.5, 0.25, 1.0, 0.25, 0.0, -0.25, -0.5, -0.5, 1.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 0.25, -0.75, -0.5, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    texture200.destroy();
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    texture402.destroy();
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    texture101.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer302.destroy()
    device50.pushErrorScope("internal");
    texture300.destroy();
    render_bundle_encoder402.popDebugGroup();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture400.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture300.destroy();
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    texture301.destroy();
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder600.popDebugGroup();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    
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
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture404.destroy();
    device40.queue.writeTexture({ texture: texture405 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer303.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device20.pushErrorScope("internal");
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    buffer600.destroy()
    const array6 = new Float32Array([1.0, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, 0.5, 1.0, -0.5, -0.25, -0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.0, 0.5, -0.5, -0.75, -0.25, -0.5, 0.0, 1.0, 0.25, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.0, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.25, -0.5, 0.0, 0.5, -0.75, -0.75, 1.0, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.25, -0.5, -0.5, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    device70.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    texture406.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder300.popDebugGroup();
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const array7 = new Float32Array([0.0, 0.0, -0.5, -0.25, -1.0, 1.0, 0.75, 0.25, 0.25, 0.0, -1.0, -0.25, 0.5, 1.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.25, -0.25, 1.0, 0.5, -1.0, -1.0, -0.75, 0.75, 1.0, 0.5, -0.25, 0.0, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.0, 0.5, -0.75, 0.0, 1.0, 0.5, -0.5, -1.0, 0.0, 0.25, -0.5, -0.25, 0.5, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, 0.0, -0.5, -0.5, -0.5, 0.0, 0.25, -0.75, 0.25, -0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -0.5, -0.5, -0.5, 0.5, 0.75, 0.5, -0.75, -0.5, 0.0, 0.5, -1.0, 0.5, 1.0, 0.75, 0.25, -0.25, ]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
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
    
    
    
    render_bundle_encoder602.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer401.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const array8 = new Float32Array([0.25, -0.5, -0.75, 0.5, -0.25, 0.5, -0.5, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 0.75, -0.25, -0.75, 0.25, -0.25, 1.0, -1.0, -0.25, -0.75, -1.0, 0.0, 1.0, -0.25, 0.25, -0.75, -0.25, -1.0, 0.0, -0.5, -0.25, 1.0, 0.0, 0.25, 0.25, 0.0, 0.5, 1.0, -0.25, 0.25, -0.5, -0.5, -0.5, 0.25, -1.0, -0.25, -0.25, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, 1.0, 0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, 0.25, -0.5, -1.0, 0.75, 0.5, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, -0.25, ]);
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    texture407.destroy();
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    device40.pushErrorScope("internal");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    
    
    device40.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer601.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.popDebugGroup();
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.5, 0.0, -0.5, -1.0, 0.25, 0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 0.25, 0.25, 0.75, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, -0.5, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.25, 0.5, -0.75, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, 0.25, 1.0, 1.0, 0.0, 0.0, -1.0, 0.0, -1.0, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, -1.0, 0.25, -0.5, 1.0, 0.5, 0.75, 1.0, 0.0, -0.25, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 0.5, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.5, 0.25, 0.0, -0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    
    
    
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    device00.destroy();
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder600.popDebugGroup();
    texture405.destroy();
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    texture601.destroy();
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    texture403.destroy();
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    
    
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    
    
    
    
    
    texture604.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    buffer603.destroy()
    device60.queue.writeTexture({ texture: texture603 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer602.destroy()
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    
    
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    
    var shader_module6012_code = "";
    try {
        shader_module6012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6012 = await device60.createShaderModule({ label: "shader_module6012", code: shader_module6012_code })
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    
    render_bundle_encoder601.popDebugGroup();
    texture500.destroy();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    texture603.destroy();
    
    
    
    
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
    render_bundle_encoder302.insertDebugMarker("marker");
    
    buffer600.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device60.destroy();
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_bundle_encoder302.popDebugGroup();
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
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
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const array10 = new Float32Array([0.75, 0.5, -0.75, 0.25, -0.25, -1.0, -0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, -0.75, 0.25, -0.5, -0.75, 0.25, -0.5, 1.0, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.75, 0.5, 1.0, -1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.25, 1.0, ]);
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    
    texture1000.destroy();
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}