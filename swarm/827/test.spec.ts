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
    
    
    
    const array0 = new Float32Array([0.0, -0.75, -0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, -0.75, -1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -0.75, -0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, -0.75, 0.5, 0.75, -1.0, 0.75, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, -1.0, 0.5, -0.25, 1.0, -0.25, -0.75, -0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 1.0, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, -0.25, 1.0, 0.75, 0.5, -1.0, 0.5, -1.0, -0.25, 0.0, 0.0, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([0.75, -0.75, -1.0, 1.0, 0.0, -1.0, 0.75, 0.5, -1.0, 0.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.0, 0.75, 0.5, 0.5, 0.25, -0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.5, -0.25, -0.25, -1.0, 1.0, -1.0, -0.75, -0.5, 0.25, 0.5, 0.5, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.25, -1.0, -0.25, -1.0, 0.5, 0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 0.5, 0.25, 0.5, 0.25, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, -1.0, -0.75, 0.25, -0.25, 0.0, -1.0, 1.0, 1.0, 0.25, 1.0, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, -0.25, 0.5, 0.75, -0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.75, 0.0, ]);
    const array2 = new Float32Array([1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.25, 1.0, 0.0, 0.5, -1.0, 0.5, -0.75, 0.5, -0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -1.0, 1.0, 0.0, 0.5, 0.5, -1.0, 0.75, 0.0, 0.75, -0.25, -0.75, 0.0, 0.25, -1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, -0.75, 0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 1.0, 1.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, -0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, 0.0, -1.0, -0.5, -0.5, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, 0.0, 1.0, 0.25, 0.75, -0.75, ]);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array3 = new Float32Array([0.75, 1.0, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, 0.5, -0.25, -0.5, 1.0, -1.0, 0.0, 0.75, 0.0, -0.75, 0.25, -0.75, 0.25, -0.25, -0.5, 1.0, 0.0, -0.25, 0.5, -0.75, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 1.0, 1.0, 0.25, 0.75, -1.0, 1.0, -1.0, -0.5, -0.25, 0.75, -0.5, -0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -0.75, -0.5, -0.5, -0.25, -0.25, 0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -1.0, 0.25, -1.0, 0.75, -0.75, -0.25, 1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.75, 0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, -0.75, -1.0, 1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device10.pushErrorScope("validation");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    device10.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const array4 = new Float32Array([-0.25, 0.0, 0.5, 0.25, -0.5, -1.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -0.75, 0.5, -1.0, 0.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 0.0, -0.25, 0.0, -0.75, 1.0, -1.0, 0.0, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.0, 0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, 0.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.25, 0.5, 0.75, 0.5, 0.0, 0.0, 0.25, 0.0, -0.5, 0.5, -0.75, -0.25, 0.5, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, -0.25, 0.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 0.0, 0.5, 0.5, 0.75, ]);
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.5, 0.25, -0.75, 0.0, 0.0, -0.5, 0.0, 0.25, 0.75, 0.75, 0.75, 0.25, 0.0, -0.5, 0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, -1.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -1.0, 1.0, -1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 0.5, 0.25, -1.0, -0.25, 0.75, -0.75, 1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, -0.75, 0.0, -1.0, -1.0, 0.75, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.25, -0.75, 0.25, -0.75, 0.75, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    buffer300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    buffer302.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    device30.pushErrorScope("internal");
    buffer203.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer301.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer202.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer201.destroy()
    texture300.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const array6 = new Float32Array([-1.0, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.75, 0.0, -1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -1.0, 1.0, -0.25, -0.5, 0.75, -1.0, -0.75, 0.0, 1.0, 0.75, -1.0, 1.0, 0.0, -1.0, 1.0, 0.5, -0.25, -0.75, -0.25, 1.0, -0.5, -0.75, -0.5, -0.5, -0.75, 0.25, -0.25, 0.5, -0.5, -0.5, -0.25, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.5, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
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
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    texture301.destroy();
    buffer303.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    
    texture303.destroy();
    texture302.destroy();
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array7 = new Float32Array([0.75, 0.25, 1.0, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, 0.0, 0.25, 0.25, 0.5, 0.75, 0.5, 0.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, 0.5, -0.25, 0.5, -0.25, 0.75, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 0.25, -0.75, 1.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, -0.25, -0.25, 1.0, -0.25, 0.0, -1.0, -0.25, 0.0, 0.25, -1.0, 0.75, 0.25, 0.25, -0.75, -0.5, -1.0, -1.0, 1.0, 0.5, 0.0, 0.5, 0.75, 0.5, ]);
    
    texture201.destroy();
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    buffer205.destroy()
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    device20.destroy();
    device30.pushErrorScope("validation");
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
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
    
    texture305.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device40.destroy();
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("out-of-memory");
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    texture306.destroy();
    const array8 = new Float32Array([-0.75, 0.25, 0.0, -1.0, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.5, 0.25, 0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, -0.75, -0.75, -0.25, 0.0, 0.0, -0.5, 0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, 0.25, 0.0, -0.25, 0.75, 0.0, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, -1.0, 1.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.75, 0.5, -1.0, 0.0, -0.25, 0.0, 0.75, -0.75, -0.75, 0.5, 0.75, -0.5, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -0.25, -0.75, 0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, -0.75, 0.0, -0.25, -0.5, ]);
    
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device50.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    buffer700.destroy()
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    buffer304.destroy()
    
    
    device70.pushErrorScope("internal");
    
    device30.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device70.pushErrorScope("internal");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const array9 = new Float32Array([1.0, -0.5, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 0.5, 0.0, 0.5, 0.25, -0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, 0.5, 0.25, -0.25, -0.75, -1.0, -0.75, -0.25, -0.25, -0.5, -1.0, 1.0, -1.0, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, 0.5, 0.25, 0.5, 1.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.25, 0.0, 0.25, 0.75, 0.5, 0.25, 0.5, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, -1.0, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 1.0, -0.5, -0.25, -1.0, -0.25, 0.0, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -0.5, ]);
    
    const array10 = new Float32Array([0.0, 0.75, 0.25, 0.75, 0.5, 1.0, 0.75, -1.0, -0.5, 0.0, -0.25, 0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.75, 0.5, 0.0, 0.25, -0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.25, -0.5, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -0.25, 0.5, 0.5, -0.75, 0.75, -0.25, -1.0, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, -0.5, 0.25, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, 0.25, 0.0, 1.0, 0.5, 0.25, 0.0, 0.0, -0.25, ]);
    texture801.destroy();
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device80.pushErrorScope("validation");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
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
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    buffer800.destroy()
    device80.destroy();
    const array11 = new Float32Array([0.75, -0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.25, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.5, -0.25, 1.0, -0.5, 0.25, 0.0, 1.0, 0.5, -0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.75, -0.5, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, -1.0, -0.75, -0.75, -0.5, -0.5, -0.75, 0.75, 0.75, -0.5, -0.25, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 1.0, -0.75, -0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 1.0, -1.0, 1.0, 0.25, -1.0, 0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 0.5, 0.25, 0.0, -0.75, 0.75, -0.75, 0.75, -1.0, 1.0, -1.0, -0.5, ]);
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
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
    
    
    const array12 = new Float32Array([-0.5, 0.5, 0.75, -0.5, -1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.25, 0.25, 0.75, -0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -0.75, 0.0, 0.0, 0.5, 0.0, 0.75, -0.25, -0.5, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.75, 1.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.75, 0.0, 0.5, -0.25, 0.75, 0.5, 0.25, -0.75, -0.75, -0.5, -0.75, -0.75, 0.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.0, -0.5, -1.0, -0.5, 1.0, ]);
    
    const array13 = new Float32Array([1.0, 0.0, 0.25, 0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, 1.0, 1.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.25, 0.5, -1.0, 0.0, 0.75, -0.5, -0.5, 0.25, 0.75, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, 1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.5, 0.75, -0.25, 0.25, 1.0, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 0.0, 1.0, 0.5, 1.0, 1.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 0.0, 1.0, 1.0, 1.0, -0.25, -0.75, 1.0, ]);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    
    
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
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device70.pushErrorScope("validation");
    
    
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array14 = new Float32Array([0.5, -1.0, 1.0, 0.5, 0.0, 0.25, -1.0, -0.25, 0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 0.0, -0.25, 0.75, -0.75, 1.0, 1.0, -0.25, -0.5, 0.0, 0.5, 0.25, 0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -1.0, 0.75, -1.0, -0.75, -0.5, -0.75, 0.25, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, 0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.5, 0.0, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, -0.75, -0.5, -0.5, ]);
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    device60.destroy();
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer702, 0, array11, 0, array11.length);
    buffer701.destroy()
    
    const array15 = new Float32Array([-0.5, 0.25, 0.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, -0.75, 0.25, -0.75, -0.25, 0.0, -0.75, 0.75, -0.5, -1.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.25, 0.0, 0.75, -0.75, 0.0, 0.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.75, -0.75, 0.75, 0.25, 0.25, 0.25, 0.5, -0.25, 1.0, 0.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 0.0, -0.5, 0.75, 0.25, -0.5, -0.25, 1.0, 0.75, -1.0, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, 0.75, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, -1.0, 0.25, 1.0, 0.25, 0.75, 0.5, -0.75, 0.75, ]);
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    device100.destroy();
    buffer702.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
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
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    texture702.destroy();
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
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module707.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    texture700.destroy();
    device70.pushErrorScope("out-of-memory");
    device90.pushErrorScope("internal");
    const array16 = new Float32Array([0.5, 1.0, 0.0, 0.0, 1.0, 0.25, -0.5, 0.5, -1.0, 0.75, -0.25, -0.75, 0.75, 1.0, -0.5, -0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.75, 0.5, 1.0, 0.5, 0.5, -0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, -0.25, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 1.0, -0.75, -1.0, -0.25, -0.75, 0.25, 1.0, -0.5, 0.25, 0.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, 0.75, -0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, 0.25, 0.75, -1.0, -1.0, -0.75, -0.25, ]);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    
    
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
    
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device70.pushErrorScope("validation");
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device90.queue.writeBuffer(buffer900, 0, array14, 0, array14.length);
    device90.queue.writeBuffer(buffer900, 0, array11, 0, array11.length);
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    device90.queue.writeBuffer(buffer900, 0, array13, 0, array13.length);
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    
    
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    texture703.destroy();
    
    device110.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const array17 = new Float32Array([0.75, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.75, 0.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.25, -0.75, -0.75, 0.0, -0.5, 0.25, 0.25, 0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.75, -0.75, 0.75, -0.75, -0.75, 1.0, 0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, 0.0, -0.25, -0.25, -1.0, -1.0, -0.75, -0.75, 0.75, -0.25, 0.5, ]);
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
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
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    device120.pushErrorScope("out-of-memory");
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}