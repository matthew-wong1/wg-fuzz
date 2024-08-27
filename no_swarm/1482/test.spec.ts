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
    
    const array0 = new Float32Array([0.0, 0.75, 0.75, -0.5, 1.0, 0.5, -1.0, -0.25, -0.5, -0.75, 0.25, -0.75, 0.0, 0.0, -0.5, -0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, -0.25, 1.0, -0.5, 0.5, -1.0, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -0.25, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 0.25, 0.25, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, -1.0, 0.25, 1.0, -0.75, 0.25, 0.0, -0.5, 0.0, 0.25, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, 1.0, 0.5, 1.0, 0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.5, -0.75, 0.5, ]);
    const array1 = new Float32Array([-0.25, 0.5, 0.25, -1.0, -0.25, 1.0, -0.5, -0.5, 0.75, 0.0, 0.5, 0.25, 0.5, 0.75, -1.0, 0.5, 0.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, -0.75, -0.75, 1.0, 0.75, -0.5, -1.0, 1.0, 0.25, -0.5, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, -0.25, 0.25, 0.25, -0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 0.25, 0.0, 0.5, 0.75, 1.0, -0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, 0.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -1.0, 1.0, 0.5, 0.5, 1.0, 0.75, ]);
    
    
    const array2 = new Float32Array([0.25, 0.5, 0.5, -0.75, 0.25, 0.0, -0.25, 0.0, 0.5, 0.75, 1.0, 1.0, 0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, 0.75, 0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.0, -0.5, 0.75, 0.75, -1.0, 0.0, -0.75, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 0.5, 0.25, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, 0.75, -0.75, 0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 0.75, 0.75, 0.25, -1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, -0.25, -0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -0.25, 0.5, 0.75, 0.5, 1.0, 0.0, 0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, -1.0, 0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.25, 0.25, -0.75, -0.5, 1.0, 0.75, 0.0, -1.0, -0.75, 0.5, -0.5, -0.75, -1.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.25, 1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.75, -0.5, 0.25, 0.75, -0.5, 0.75, -0.5, -1.0, 0.0, 0.5, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
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
    
    const array4 = new Float32Array([-0.25, 1.0, 0.25, -1.0, 0.0, 0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, -1.0, -0.75, -0.25, -1.0, 0.0, 0.75, -1.0, 0.25, 0.75, 0.5, 0.0, -0.5, -0.25, 0.75, 1.0, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, -0.5, -0.75, -0.5, -0.25, 0.5, 0.75, 1.0, -0.5, 0.0, 0.75, 0.5, -0.5, -0.25, 1.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -0.75, -1.0, -1.0, 0.25, 0.5, ]);
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([0.0, 0.25, -0.75, 0.0, -0.25, -0.25, -0.5, -0.25, -0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.5, 0.0, 1.0, 0.5, -0.5, -0.5, 0.25, 0.25, -0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -1.0, -1.0, -1.0, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.5, 0.25, 0.5, 0.25, 0.25, -1.0, 0.5, -0.75, 1.0, -1.0, 0.5, -1.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.5, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 1.0, 1.0, 0.5, -1.0, -0.25, 1.0, -0.25, 0.75, -1.0, -0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.5, -0.25, 0.75, 0.5, 0.5, 0.5, -0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array6 = new Float32Array([-0.5, 1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.75, -0.5, -0.25, 1.0, -0.75, 1.0, 0.25, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, 1.0, -0.5, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.5, 1.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, -0.25, -0.25, 0.0, 0.5, 1.0, 0.25, -0.25, 0.0, -0.25, -0.5, 0.5, 0.5, 0.0, -1.0, 0.5, 0.75, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.75, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    device20.destroy();
    const array7 = new Float32Array([0.25, -0.75, 0.0, 0.75, -0.5, 0.5, -0.25, 0.5, -0.25, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 0.75, -0.5, -1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, -1.0, 0.25, 1.0, -1.0, 0.0, 0.5, 0.5, 0.75, 0.5, -0.75, 0.25, 0.75, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.25, -0.5, 1.0, -0.75, 1.0, -0.75, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -0.75, 0.5, -1.0, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, -0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 0.25, 0.75, -0.25, 0.75, -0.75, -1.0, 0.5, -0.5, 0.75, ]);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    device30.destroy();
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
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array8 = new Float32Array([0.75, -1.0, 0.0, -0.75, 0.75, 0.0, 0.75, 0.0, 0.25, -0.25, -0.25, 0.25, -0.25, 0.75, 0.75, -0.5, 0.75, 0.5, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, 1.0, -0.75, -0.25, 0.75, 0.25, 0.25, 0.5, 0.0, -0.25, 0.5, 0.75, 0.5, 0.0, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, 1.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.0, -1.0, -0.25, 0.5, 0.5, 1.0, 1.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.5, 0.25, 0.5, 1.0, -1.0, 1.0, 0.0, 0.5, 0.0, 0.0, 0.0, 1.0, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.5, 0.75, 1.0, -0.75, -0.5, 0.75, -1.0, -0.5, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder001.popDebugGroup();
    const array9 = new Float32Array([1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -1.0, 1.0, -0.75, 0.25, 0.0, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, 0.0, -1.0, -0.25, 0.0, 0.25, -1.0, -0.75, -0.25, 0.25, 0.5, -0.5, 0.5, -1.0, -0.75, -0.25, -0.75, 1.0, 0.25, 0.75, -0.5, -0.75, -0.25, 1.0, 0.25, -0.5, -0.25, 1.0, -0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -0.5, -1.0, 0.75, -0.25, 0.5, 1.0, -0.75, 0.75, -1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 0.25, 0.25, -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, 0.75, -0.75, 1.0, ]);
    
    
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder200.insertDebugMarker("mymarker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_buffer200 = command_encoder200.finish();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    command_encoder401.insertDebugMarker("mymarker");
    
    command_encoder401.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer400.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    command_encoder400.insertDebugMarker("mymarker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    command_encoder402.insertDebugMarker("mymarker");
    
    device40.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder400.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer600 = command_encoder600.finish();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    query600.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    texture600.destroy();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
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
    command_encoder402.insertDebugMarker("mymarker");
    
    const array10 = new Float32Array([-0.25, 1.0, -0.5, 0.75, 0.75, 1.0, 0.5, 1.0, -1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.0, 1.0, -0.25, 0.0, -0.5, -0.25, -0.25, -0.5, 0.5, 0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.75, 0.25, -0.5, 0.75, 1.0, -1.0, 0.5, 0.25, 1.0, 0.5, -0.5, 1.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.75, -0.25, 0.0, -0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 0.5, 0.25, -0.25, 1.0, -1.0, -0.75, 0.5, 0.25, 0.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, -1.0, 0.75, 1.0, 0.25, 0.25, 0.5, 0.25, -0.25, 0.5, -0.25, -0.75, -0.75, -1.0, 0.0, -0.25, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.popDebugGroup()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    command_encoder402.pushDebugGroup("mygroupmarker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder602.insertDebugMarker("mymarker");
    buffer300.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4020.setPipeline(render_pipeline400);
    texture201.destroy();
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    device50.destroy();
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4000.setPipeline(render_pipeline400);
    compute_pass_encoder6000.popDebugGroup()
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    query400.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    render_pass_encoder4020.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    query601.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder400.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    compute_pass_encoder4020.popDebugGroup()
    
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_pass_encoder4001.setStencilReference(1);
    render_pass_encoder4001.setStencilReference(1);
    query401.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4020.setStencilReference(1);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    compute_pass_encoder6020.insertDebugMarker("marker")
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture601.destroy();
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    render_pass_encoder4001.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder4001.setPipeline(render_pipeline405);
    
    render_pass_encoder4001.insertDebugMarker("marker");
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
    device40.pushErrorScope("out-of-memory");
    query401.destroy()
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder4000.popDebugGroup();
    buffer600.destroy()
    
    
    buffer601.destroy()
    buffer601.destroy()
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const render_pass_encoder6011 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query601
    });
    
    
    render_pass_encoder4010.setPipeline(render_pipeline403);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder6011.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder6011.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    render_pass_encoder6010.setStencilReference(1);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    render_pass_encoder4010.insertDebugMarker("marker");
    
    render_pass_encoder6011.setStencilReference(1);
    device60.queue.writeTexture({ texture: texture602 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder6011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4001.pushDebugGroup("group_marker");
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group400);
    
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    
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
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setStencilReference(1);
    
    texture602.destroy();
    render_pass_encoder6011.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    query401.destroy()
    render_pass_encoder4030.setPipeline(render_pipeline401);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_pass_encoder6010.insertDebugMarker("marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query600.destroy()
    render_pass_encoder4030.beginOcclusionQuery(0)
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    compute_pass_encoder6020.insertDebugMarker("marker")
    const compute_pass_encoder6021 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6021" });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    render_pass_encoder4010.setStencilReference(1);
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    buffer600.destroy()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder6011.pushDebugGroup("group_marker");
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
    
    device60.queue.writeTexture({ texture: texture603 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device40.queue.writeBuffer(buffer407, 0, array0, 0, array0.length);
    
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder6010.executeBundles([])
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    device70.pushErrorScope("out-of-memory");
    
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    command_encoder603.insertDebugMarker("mymarker");
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    compute_pass_encoder6020.popDebugGroup()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture402.destroy();
    render_bundle_encoder400.setPipeline(render_pipeline402);
    
    buffer404.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6010.executeBundles([render_bundle_encoder600, ])
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    buffer406.destroy()
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4001.setVertexBuffer(0, buffer400);
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    render_pass_encoder4001.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
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
    command_encoder404.insertDebugMarker("mymarker");
    device40.queue.submit([]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer406.destroy()
    render_pass_encoder4030.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder402.clearBuffer(buffer402);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder6010.setPipeline(render_pipeline600);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture203.destroy();
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder6030.setPipeline(render_pipeline600);
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group403);
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder6011.setPipeline(render_pipeline601);
    const command_buffer602 = command_encoder602.finish();
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6030.setBindGroup(0, bind_group601);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    const command_buffer603 = command_encoder603.finish();
    device70.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    render_pass_encoder6011.popDebugGroup();
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
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6011.setBindGroup(0, bind_group602);
    render_pass_encoder4000.setVertexBuffer(0, buffer403);
    command_encoder601.popDebugGroup()
    render_pass_encoder6011.setVertexBuffer(0, buffer605);
    render_pass_encoder6011.popDebugGroup();
    render_pass_encoder6011.draw(3);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group406);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4018, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4018, 0);
    render_pass_encoder4000.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4010.setVertexBuffer(0, buffer408);
    render_pass_encoder4010.drawIndirect(buffer4018, 0);
    render_pass_encoder6030.setVertexBuffer(0, buffer604);
    compute_pass_encoder4040.setPipeline(compute_pipeline400);
    render_pass_encoder4010.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4019, 0);
    render_pass_encoder4000.drawIndirect(buffer4010, 0);
    render_pass_encoder4030.setVertexBuffer(0, buffer4012);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder4030.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4030.drawIndexed(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6030.drawIndirect(buffer603, 0);
    device60.queue.submit([command_buffer602, ]);
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group407);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder4030.endOcclusionQuery()
    compute_pass_encoder4020.end();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4030.end();
    render_pass_encoder6011.drawIndirect(buffer601, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4000.end();
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const command_buffer403 = command_encoder403.finish();
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group603);
    render_pass_encoder6010.setVertexBuffer(0, buffer602);
    render_pass_encoder4010.draw(3);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder6010.end();
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder6030.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer401 = command_encoder401.finish();
    device60.queue.submit([command_buffer603, ]);
    device40.queue.submit([command_buffer403, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4000.end();
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4018, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4010.drawIndirect(buffer4023, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4001.drawIndirect(buffer4020, 0);
    device40.queue.submit([]);
    compute_pass_encoder4040.end();
    render_pass_encoder4030.setIndexBuffer(buffer4019, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6011.drawIndirect(buffer607, 0);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    render_pass_encoder4030.setIndexBuffer(buffer4020, "uint16");
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4010);
    render_pass_encoder6011.end();
    device60.queue.submit([command_buffer601, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4029, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4029, 0);
    render_pass_encoder4010.drawIndexed(3);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4030, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder6010.setIndexBuffer(buffer605, "uint16");
    render_pass_encoder4000.end();
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group4011);
    render_pass_encoder4020.setVertexBuffer(0, buffer400);
    render_pass_encoder4001.drawIndirect(buffer4029, 0);
    render_pass_encoder4020.drawIndirect(buffer4030, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4033, 0);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder4000.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder6030.drawIndirect(buffer601, 0);
    render_pass_encoder4010.drawIndirect(buffer4030, 0);
    render_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4030.drawIndirect(buffer4027, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4034, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4001.drawIndirect(buffer4020, 0);
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    render_pass_encoder4010.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder4010.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4019, 0);
    render_pass_encoder4030.drawIndirect(buffer4017, 0);
    render_pass_encoder6030.setIndexBuffer(buffer608, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4001.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4030, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer609, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer4025, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4000.drawIndirect(buffer4029, 0);
    render_pass_encoder6030.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer4034, 0);
    render_pass_encoder4000.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4010.end();
    render_pass_encoder4000.end();
    render_pass_encoder4010.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder6011.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4001.drawIndirect(buffer4013, 0);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer4033, 0);
    render_pass_encoder6030.popDebugGroup();
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4037, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer4031, 0);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder4010.drawIndirect(buffer4029, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4038, 0);
    render_pass_encoder6010.end();
    render_pass_encoder4030.end();
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    render_pass_encoder4020.drawIndirect(buffer4034, 0);
    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4040,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4013);
    render_pass_encoder4000.drawIndirect(buffer4020, 0);
    render_pass_encoder4020.setIndexBuffer(buffer4033, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer4014, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4000.drawIndirect(buffer4029, 0);
    compute_pass_encoder4040.end();
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder4020.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer4038, 0);
    device60.queue.submit([]);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder4010.drawIndirect(buffer4033, 0);
    render_pass_encoder4001.popDebugGroup();
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4041, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4041, 0);
    render_pass_encoder6010.end();
    render_pass_encoder4010.drawIndirect(buffer4024, 0);
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([]);
    render_pass_encoder6011.popDebugGroup();
    compute_pass_encoder6021.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4001.drawIndexedIndirect(buffer4037, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.drawIndirect(buffer4036, 0);
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder4020.drawIndexedIndirect(buffer4018, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4010.end();
    render_pass_encoder4010.drawIndirect(buffer4020, 0);
    render_pass_encoder6011.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer4029, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndexedIndirect(buffer4038, 0);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder4001.setIndexBuffer(buffer4021, "uint16");
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder4000.drawIndirect(buffer4030, 0);
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer4038, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4001.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4001.drawIndexedIndirect(buffer4019, 0);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4045, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4045, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4010.end();
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    render_pass_encoder6010.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder6030.end();
    render_pass_encoder4000.drawIndirect(buffer4010, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4020.end();
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4015);
    render_pass_encoder4000.end();
    render_pass_encoder6030.drawIndirect(buffer605, 0);
    device70.queue.submit([]);
    compute_pass_encoder6021.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer4039, 0);
    render_pass_encoder4020.draw(3);
    device40.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer4033, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer4020, 0);
    render_pass_encoder4000.drawIndirect(buffer4010, 0);
    render_pass_encoder4030.drawIndirect(buffer4041, 0);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4048, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4048, 0);
    render_pass_encoder4001.drawIndirect(buffer4048, 0);
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    render_pass_encoder4030.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder6030.draw(3);
    render_pass_encoder4001.drawIndirect(buffer4038, 0);
    compute_pass_encoder6021.popDebugGroup()
    render_pass_encoder4001.end();
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4049, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4049, 0);
    compute_pass_encoder6021.popDebugGroup()
    render_pass_encoder4000.drawIndexedIndirect(buffer4042, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4050, 0);
    render_pass_encoder4010.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer4045, 0);
    device60.queue.submit([]);
    render_pass_encoder4030.draw(3);
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4016);
    render_pass_encoder4020.drawIndirect(buffer4041, 0);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer4024, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4037, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6030.drawIndexedIndirect(buffer602, 0);
    render_pass_encoder4000.drawIndirect(buffer4019, 0);
    render_pass_encoder6011.end();
    render_pass_encoder6010.drawIndirect(buffer601, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4020.drawIndirect(buffer4033, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4049, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4030.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4030.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4000.popDebugGroup();
}