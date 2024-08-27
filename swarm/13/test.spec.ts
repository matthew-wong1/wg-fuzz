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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const array0 = new Float32Array([0.5, -0.75, -1.0, 0.0, 0.75, -0.25, 0.25, 0.5, 0.25, 0.75, 0.0, -0.25, 0.25, -0.25, 0.0, 1.0, 1.0, -0.75, 1.0, 1.0, -0.5, -0.5, -1.0, -0.5, 0.75, 1.0, 0.25, -0.25, 0.75, 0.25, -0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 0.25, 0.75, 0.75, -1.0, -0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -1.0, 0.5, 0.5, -0.25, 0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.25, 0.25, -0.25, -1.0, 0.5, 0.75, -0.5, -0.25, 0.75, 0.75, -1.0, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, 0.0, 0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -1.0, -0.75, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([1.0, -0.75, -0.75, 1.0, -1.0, 0.75, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 1.0, -0.25, -0.25, 1.0, 0.5, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, -1.0, -0.25, 0.75, 0.5, -0.75, -0.75, -1.0, -0.5, 1.0, 0.0, -1.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -0.75, 0.0, -1.0, 1.0, 0.0, -0.75, -0.5, 0.5, 0.5, 0.25, 1.0, -0.5, -1.0, -0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, -0.75, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 1.0, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
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
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.75, -0.5, -0.25, -0.75, -0.25, -0.75, -0.25, 1.0, 0.0, 0.5, 0.75, 0.75, 1.0, -1.0, -0.5, 0.0, 0.0, 0.5, 0.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 1.0, 0.0, 0.25, -0.25, 0.0, 0.25, -0.25, 1.0, -0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 1.0, -0.5, -0.25, 0.25, 0.0, -0.5, 0.25, -0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 1.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, -0.75, 0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 0.5, 0.5, 0.5, -1.0, 1.0, 0.75, 0.5, -0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
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
    texture200.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.5, 0.25, 1.0, -0.25, 0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.25, 1.0, 0.0, 0.5, -0.5, 0.25, -1.0, 0.5, 0.0, 0.75, -0.25, -0.5, -1.0, -1.0, 0.25, -0.75, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.25, 0.75, 1.0, -0.5, 1.0, 0.0, -0.25, 1.0, -1.0, -0.5, 0.75, -0.75, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, 0.75, -0.75, 0.25, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 1.0, 0.25, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, 0.25, 0.0, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, -1.0, -1.0, 1.0, ]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query200.destroy()
    
    query200.destroy()
    query201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.destroy();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    query100.destroy()
    query100.destroy()
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    device10.pushErrorScope("validation");
    device00.destroy();
    
    
    device20.pushErrorScope("validation");
    texture100.destroy();
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    query100.destroy()
    
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
    
    query100.destroy()
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture202.destroy();
    
    
    texture201.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
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
    
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query201.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
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
    device50.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query201.destroy()
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    device40.pushErrorScope("validation");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    
    query201.destroy()
    device10.destroy();
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    query201.destroy()
    texture204.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const array4 = new Float32Array([-1.0, 0.5, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, 1.0, -0.75, -0.5, -0.25, 0.5, 0.25, 0.0, 0.5, -0.75, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.25, -0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.25, -0.25, -0.75, 0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.25, 0.25, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 1.0, -1.0, 0.75, 0.0, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 1.0, 0.0, -0.5, ]);
    
    
    
    query201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    texture203.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.5, -0.5, -0.75, 0.5, -0.75, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.5, 1.0, 0.25, 1.0, 0.0, 0.25, -1.0, 0.0, 0.0, -0.5, -0.5, -1.0, -0.75, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, 0.75, -0.5, -1.0, -0.5, -1.0, 1.0, 0.5, -1.0, -0.75, 0.0, 0.5, -0.5, 0.75, 0.5, -1.0, 0.25, -0.5, 0.5, 1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.75, -0.25, 0.75, 0.0, -0.5, 0.25, 0.5, -1.0, -0.5, -0.5, 0.25, 0.25, 1.0, 0.0, -0.25, 0.75, 0.5, 1.0, -0.75, -0.75, 0.25, -0.5, -0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -0.5, 0.25, 0.75, -0.75, -1.0, -1.0, -0.5, -0.5, 1.0, -1.0, -0.75, 0.5, 0.5, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.destroy();
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device40.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    query601.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device60.pushErrorScope("internal");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query601.destroy()
    
    device60.destroy();
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.destroy();
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.destroy();
    const array6 = new Float32Array([-1.0, -0.75, 0.75, -0.25, 0.75, -0.5, -0.25, 0.5, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, -0.75, 0.75, 0.0, -0.75, 0.0, 0.75, 0.75, -1.0, 0.75, 0.5, 0.0, 0.75, 0.25, 0.0, 0.75, -1.0, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.5, 0.5, 1.0, -0.25, -1.0, 0.25, -0.25, 0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.25, 0.5, 0.0, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, -0.25, -0.75, 0.0, -0.25, 0.5, 0.25, -0.75, 1.0, 0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 0.25, 0.0, 0.25, 0.0, -1.0, 0.25, 1.0, 0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.25, -0.75, -0.75, ]);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const array7 = new Float32Array([-0.5, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 0.25, -1.0, 1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 0.0, 1.0, -0.75, -0.25, 1.0, 0.25, 0.75, 1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, -0.75, -0.75, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 1.0, -1.0, -1.0, -0.25, -0.75, -0.5, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.5, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, -0.75, 0.25, 0.75, 0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.75, 0.5, 0.75, -0.5, -0.25, 0.0, ]);
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, 1.0, -0.25, 1.0, 0.0, -0.25, 0.25, -1.0, 1.0, 0.25, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.5, 1.0, 0.75, -1.0, 1.0, -0.75, -0.25, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, -0.5, 0.0, 1.0, -0.25, 0.25, -0.5, -1.0, -0.75, -0.5, 0.5, 0.0, 0.25, 0.75, 0.0, 0.0, -1.0, -0.25, 0.0, -0.5, -0.25, 0.0, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 1.0, -0.75, 0.0, -0.5, 0.0, -0.75, 1.0, 1.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.0, 0.25, -0.5, 0.5, 0.5, -1.0, 0.25, 1.0, 0.75, -1.0, -1.0, 0.25, -0.25, 0.0, 0.75, 0.75, 0.5, 0.5, -1.0, ]);
    device90.pushErrorScope("out-of-memory");
    
    
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    device110.destroy();
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    device80.destroy();
    const array9 = new Float32Array([-1.0, 0.75, 0.75, -0.75, 0.5, 1.0, -0.25, -1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, -0.75, -0.5, 0.25, -0.75, -0.25, -1.0, 0.75, -0.5, 0.25, -1.0, 0.0, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, 0.25, -0.5, 0.5, -0.25, 0.75, 0.25, -0.25, 0.25, -1.0, 1.0, 0.75, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, -0.25, -0.25, -0.25, 1.0, -0.25, 0.0, -1.0, -1.0, -0.75, -0.75, 1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.25, 1.0, -0.25, 1.0, 0.0, 0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.25, -0.25, 0.0, -0.5, ]);
    
    
    
    
    
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
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
    device130.pushErrorScope("internal");
    
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    
    
    
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
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
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    query1300.destroy()
    texture900.destroy();
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device90.destroy();
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
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
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    device140.pushErrorScope("validation");
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query1400.destroy()
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.pushErrorScope("validation");
    
    
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
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
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    query1300.destroy()
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}