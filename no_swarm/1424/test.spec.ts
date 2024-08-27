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
    
    const array0 = new Float32Array([-0.25, 0.5, 0.5, 1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.75, -0.75, 0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 1.0, 0.5, -0.5, 0.0, 0.25, -0.5, -0.25, 1.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -1.0, -1.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.75, 0.5, -0.25, 1.0, -0.25, 1.0, 0.25, 0.5, -0.5, -0.75, 0.0, -1.0, -0.25, -0.5, -0.25, 0.0, -0.25, 0.5, 0.5, 1.0, 1.0, 1.0, -1.0, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 1.0, ]);
    
    const array1 = new Float32Array([0.75, 0.0, 1.0, 1.0, 1.0, 0.5, -1.0, 0.5, -0.25, 0.5, -1.0, 0.5, 0.5, 0.25, 0.75, 0.25, 0.75, -1.0, 0.0, 0.75, 0.75, 1.0, -0.5, -1.0, 1.0, 1.0, -0.75, -0.5, 0.5, 0.25, 0.25, -1.0, 1.0, 0.0, 0.5, 0.25, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 1.0, -0.25, 1.0, 0.75, -0.25, -1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -0.5, 0.0, 0.5, -0.25, 0.75, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, -0.5, -0.25, 0.0, 0.25, 0.5, 0.0, 0.0, -0.25, -1.0, 1.0, 0.5, 1.0, 1.0, 0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.5, 0.0, 0.25, -0.75, 0.0, 1.0, -0.5, -0.75, -0.25, 1.0, -0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.25, -0.75, 0.0, 1.0, -0.25, -0.25, 0.5, 0.5, -0.25, -0.75, 0.0, 0.5, -0.75, 0.5, 0.5, -0.75, -0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 0.0, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, -1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, 1.0, 0.0, 1.0, 0.5, ]);
    
    const array3 = new Float32Array([-0.5, 0.5, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 0.25, -0.25, -1.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.5, -0.25, -0.25, 0.25, -0.5, 0.0, 1.0, -0.75, 0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 0.0, -0.75, -0.75, -0.25, 0.5, -0.5, 0.25, 1.0, -1.0, -0.25, 0.75, -0.5, 1.0, -0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, -0.25, 0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.75, -1.0, 1.0, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, -1.0, 1.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture200.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    texture200.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    buffer201.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder200.clearBuffer(buffer200);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.popDebugGroup()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer201 = command_encoder201.finish();
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer201.destroy()
    
    buffer200.destroy()
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([-0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 0.75, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.5, 0.5, 0.25, -0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 1.0, 0.0, -0.5, 0.75, 1.0, -0.75, -0.5, 0.5, -0.75, 0.0, -0.5, 0.5, 0.75, 0.75, 0.0, -0.75, 0.25, 0.5, -0.25, 0.75, 1.0, 0.0, -0.75, 0.75, 1.0, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, -0.25, 1.0, 0.5, 0.0, -0.25, 0.75, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, -0.5, 0.75, 0.75, 0.25, 1.0, -0.5, 0.75, 0.25, 0.25, -0.25, -0.25, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture100.destroy();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
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
    const array5 = new Float32Array([-0.75, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.0, -0.75, -1.0, -1.0, 0.5, 0.75, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, 0.5, -0.5, -0.5, 0.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, 0.0, -0.25, 0.25, 0.75, 0.0, 0.5, 0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, -0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.5, 0.5, -1.0, 1.0, -0.25, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const array6 = new Float32Array([0.25, -0.25, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.25, 0.25, 0.75, 0.0, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, -1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, -0.5, 0.25, 0.0, 0.25, 1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, -0.5, 1.0, 0.5, -0.25, 0.0, -0.5, 0.0, -1.0, 0.5, -0.75, -1.0, 0.5, 0.0, 0.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.75, -0.25, 0.75, -0.25, 1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.25, -1.0, 0.75, 0.75, 1.0, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-0.75, 0.25, 0.75, -1.0, 0.75, 0.5, -0.25, 0.75, 0.25, 0.5, -1.0, 0.75, -0.5, -0.25, -0.5, 0.25, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 1.0, -1.0, 0.0, -0.5, -0.75, 0.0, -0.5, 0.25, 0.5, 0.75, 1.0, 1.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.75, 0.25, 0.25, 0.75, 0.5, 1.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.0, 0.75, -0.25, 0.25, -0.5, 0.25, -0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, -1.0, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, -0.75, -0.75, -0.75, 0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.25, 1.0, 1.0, 0.0, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 0.25, ]);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    texture500.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device70.pushErrorScope("internal");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    texture500.destroy();
    buffer600.destroy()
    
    query501.destroy()
    
    
    query500.destroy()
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    query601.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([1.0, 0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.0, 0.5, -0.25, 1.0, -1.0, -1.0, -0.75, -1.0, -0.5, -0.75, -0.25, -1.0, -1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -1.0, -0.75, 0.75, 0.0, -0.25, -0.25, 0.75, -0.75, 0.0, 0.75, -0.5, -0.5, 0.75, 0.75, -0.75, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, -1.0, -0.25, 0.5, -1.0, 0.75, 0.0, -0.25, 1.0, 0.75, -1.0, 0.25, 0.0, 0.25, 0.0, 0.25, 1.0, 0.5, -0.25, -1.0, -1.0, 0.5, -1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, 0.0, -1.0, 1.0, 0.0, 0.0, 0.5, 0.75, 0.0, -1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, -0.75, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture501.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.submit([]);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.pushErrorScope("validation");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder501.insertDebugMarker("mymarker");
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    buffer302.destroy()
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const command_buffer701 = command_encoder701.finish();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder600.insertDebugMarker("mymarker");
    const command_buffer502 = command_encoder502.finish();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    device50.queue.submit([]);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.pushErrorScope("internal");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
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
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query600.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder500.insertDebugMarker("marker");
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder304.clearBuffer(buffer302);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture600.destroy();
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    query601.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    texture502.destroy();
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder601.insertDebugMarker("mymarker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder602.clearBuffer(buffer600);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query600.destroy()
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    compute_pass_encoder5000.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    buffer400.destroy()
    device50.queue.submit([command_buffer502, ]);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_buffer602 = command_encoder602.finish();
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const command_buffer503 = command_encoder503.finish();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    
    const command_buffer601 = command_encoder601.finish();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder5040.insertDebugMarker("marker");
    
    const command_buffer501 = command_encoder501.finish();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    command_encoder301.insertDebugMarker("mymarker");
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    query300.destroy()
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.5, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 0.75, -0.75, 1.0, 0.25, -1.0, -0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 0.25, 1.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, -0.75, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.25, -0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.5, 0.25, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.75, -0.75, 0.25, 0.0, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query400.destroy()
    const array10 = new Float32Array([1.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, -0.75, -0.25, 1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.75, 1.0, -0.75, -0.25, -1.0, -1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 0.25, 1.0, -0.75, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.0, 0.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, 0.25, 0.75, 0.25, -0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.75, 0.75, -0.75, 0.25, 0.5, -1.0, -0.75, 0.75, -0.25, 0.0, 0.75, -0.75, 1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, ]);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder5040.executeBundles([])
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder3000.setPipeline(compute_pipeline305);
    render_pass_encoder5000.insertDebugMarker("marker");
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
    render_pass_encoder5041.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder5041.executeBundles([])
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    command_encoder401.clearBuffer(buffer400);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device80.pushErrorScope("internal");
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder700.popDebugGroup();
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    render_pass_encoder5040.setStencilReference(1);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder5040.insertDebugMarker("marker")
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline305.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
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
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    command_encoder603.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_pass_encoder5000.executeBundles([])
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_buffer301 = command_encoder301.finish();
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer900.destroy()
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer305,
        0
    )
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer603 = command_encoder603.finish();
    const command_buffer604 = command_encoder604.finish();
    const command_buffer600 = command_encoder600.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder6000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    command_encoder302.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    command_encoder700.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    command_encoder401.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device50.queue.submit([command_buffer501, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5040.endOcclusionQuery()
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer603, ]);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3000.end();
    device50.queue.submit([command_buffer502, ]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer604, ]);
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder5040.popDebugGroup();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group301);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer309, 0);
    device30.queue.submit([command_buffer302, command_buffer304, command_buffer305, ]);
    compute_pass_encoder3030.end();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder5041.popDebugGroup();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder5041.popDebugGroup();
    device80.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder5040.endOcclusionQuery()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder3000.end();
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5000.popDebugGroup();
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5040.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    device40.queue.submit([]);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    device60.queue.submit([command_buffer603, ]);
    device90.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3030.end();
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([]);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group603);
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    command_encoder202.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device70.queue.submit([command_buffer701, ]);
    device80.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder5041.endOcclusionQuery()
    device80.queue.submit([]);
    const command_buffer202 = command_encoder202.finish();
    device80.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6000.end();
    render_pass_encoder5040.endOcclusionQuery()
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder5000.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder6000.end();
    device70.queue.submit([command_buffer701, ]);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    device30.queue.submit([]);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline305.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    device30.queue.submit([command_buffer305, ]);
    device90.queue.submit([command_buffer900, ]);
    device40.queue.submit([]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer609, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer609, 0);
    render_pass_encoder5040.endOcclusionQuery()
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    device50.queue.submit([command_buffer503, ]);
    device00.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6010, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6010, 0);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    compute_pass_encoder5040.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder5041.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
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
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group604);
    device90.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5041.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
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
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group605);
    device50.queue.submit([]);
    compute_pass_encoder5040.popDebugGroup()
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group305);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder5000.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device90.queue.submit([]);
    device60.queue.submit([command_buffer604, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder6000.end();
    compute_pass_encoder3030.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device40.queue.submit([command_buffer400, ]);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group306);
    command_encoder000.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device80.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    device70.queue.submit([command_buffer700, ]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder5041.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device90.queue.submit([command_buffer900, ]);
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    compute_pass_encoder6000.popDebugGroup()
    device70.queue.submit([]);
    device50.queue.submit([command_buffer504, ]);
    device70.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    device40.queue.submit([]);
    device80.queue.submit([]);
    device10.queue.submit([]);
    device30.queue.submit([]);
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
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group606);
    device60.queue.submit([command_buffer604, ]);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group308);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder6000.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3026, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder5041.endOcclusionQuery()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device90.queue.submit([command_buffer900, ]);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([]);
    device40.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer501, ]);
    device90.queue.submit([command_buffer900, ]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer601, ]);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([]);
    compute_pass_encoder3030.end();
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
        layout: compute_pipeline305.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    device20.queue.submit([]);
    compute_pass_encoder6000.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device70.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder5041.endOcclusionQuery()
    device60.queue.submit([command_buffer604, ]);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer305, ]);
    device80.queue.submit([]);
    device30.queue.submit([]);
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3011);
    device70.queue.submit([]);
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3012);
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
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6000.setBindGroup(0, bind_group607);
    device20.queue.submit([command_buffer202, ]);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    device80.queue.submit([]);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder5000.endOcclusionQuery()
    device90.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([command_buffer600, command_buffer602, command_buffer603, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5000.popDebugGroup();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6019, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6019, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder5000.endOcclusionQuery()
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3038, 0);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6020, 0);
    render_pass_encoder5041.popDebugGroup();
    device70.queue.submit([]);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([command_buffer504, ]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer603, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer303, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3039, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3039, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer304, command_buffer305, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder5000.popDebugGroup();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6021, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6021, 0);
    device60.queue.submit([command_buffer600, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder5040.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    device80.queue.submit([]);
    device40.queue.submit([]);
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    compute_pass_encoder5000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5040.endOcclusionQuery()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3042, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3042, 0);
    device20.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer604, ]);
    device30.queue.submit([command_buffer304, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3043, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3043, 0);
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder2000.popDebugGroup()
    device70.queue.submit([]);
    device60.queue.submit([command_buffer601, command_buffer604, ]);
    compute_pass_encoder5040.popDebugGroup()
    device90.queue.submit([]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3044, 0);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer502, ]);
    device70.queue.submit([command_buffer701, ]);
    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3046,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3015);
    device30.queue.submit([]);
    render_pass_encoder5041.popDebugGroup();
    compute_pass_encoder5040.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder3030.end();
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5041.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    device60.queue.submit([command_buffer602, ]);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    device60.queue.submit([]);
    compute_pass_encoder5040.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder5000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device80.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6022, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6022, 0);
    render_pass_encoder5040.popDebugGroup();
    device70.queue.submit([]);
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group608);
    device90.queue.submit([]);
    compute_pass_encoder5040.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder3000.end();
    compute_pass_encoder5000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device60.queue.submit([command_buffer604, ]);
    device30.queue.submit([command_buffer301, ]);
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3016);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5000.endOcclusionQuery()
    compute_pass_encoder3030.popDebugGroup()
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer503, ]);
    device30.queue.submit([command_buffer301, ]);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3017);
    device30.queue.submit([command_buffer303, ]);
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3018);
    device70.queue.submit([]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3053, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3053, 0);
    device90.queue.submit([command_buffer900, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3054, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3054, 0);
    device70.queue.submit([]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder5000.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder5040.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    compute_pass_encoder3030.end();
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3019);
    device90.queue.submit([command_buffer900, ]);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5041.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    device60.queue.submit([command_buffer600, ]);
    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6026,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group609);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6000.end();
    device30.queue.submit([command_buffer305, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5041.endOcclusionQuery()
    compute_pass_encoder5000.popDebugGroup()
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3020);
}