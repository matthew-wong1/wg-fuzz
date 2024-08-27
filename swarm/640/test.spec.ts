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
    const array0 = new Float32Array([0.75, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.0, 0.0, 1.0, 0.5, 0.5, -0.5, -0.5, -1.0, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -0.25, 0.25, -0.25, -0.75, 0.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 0.5, 0.5, 0.5, -0.5, -0.75, 1.0, 1.0, 0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.25, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, -0.5, -0.75, 0.75, 0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 0.25, 0.0, -0.5, 0.0, -0.25, -0.5, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("internal");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query200.destroy()
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
    const array1 = new Float32Array([0.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.75, -0.5, 1.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, 1.0, 0.0, 0.75, -0.25, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 0.25, -0.75, -0.75, -0.25, -1.0, 1.0, 0.0, 0.0, 1.0, -0.25, 0.75, 0.25, 1.0, 0.25, -1.0, 0.75, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.5, -0.25, 0.75, -0.25, -0.25, 0.75, 0.5, -0.75, -1.0, 1.0, 0.0, -0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 0.0, 0.25, -0.75, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.0, 0.25, 0.0, 1.0, -0.75, -1.0, 0.25, 1.0, 0.5, -0.75, ]);
    device10.destroy();
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device30.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query300.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-0.5, -0.75, 1.0, 0.5, 0.5, 0.75, -0.5, -0.5, 0.25, 1.0, -1.0, 0.75, 0.25, -0.75, -0.25, 0.5, -0.25, 0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.5, 0.0, 0.25, 0.0, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 0.5, 0.0, 0.25, -1.0, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, -0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 0.0, 1.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.5, -0.25, -0.75, -0.5, 0.5, -0.5, -0.25, 0.0, 1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -1.0, ]);
    
    
    
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.destroy();
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-1.0, -0.25, 0.5, 0.5, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, -0.75, -1.0, 0.25, 0.75, -0.75, 0.0, -0.75, -1.0, 0.0, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, 0.0, 0.5, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, 1.0, -1.0, 0.0, 0.5, 0.5, -0.25, 0.0, 0.5, 0.0, -1.0, 0.25, -0.25, -1.0, 0.75, -0.25, -1.0, -0.25, -0.25, -0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -0.25, -0.25, 0.0, 0.5, 0.5, 0.5, 0.25, -1.0, 1.0, -0.25, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.75, -0.75, -0.75, 0.25, -0.75, -0.75, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const array4 = new Float32Array([1.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 1.0, 0.0, 0.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 0.75, 1.0, 0.75, -0.25, 0.75, 0.5, 0.5, 1.0, 1.0, 0.75, -0.75, -0.75, -0.5, -1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.5, 0.0, -0.75, 0.75, 0.25, 0.0, -0.25, -1.0, 0.25, 0.5, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.25, -0.75, 0.0, 1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 1.0, -0.5, -0.75, 1.0, 0.75, 0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer000.destroy()
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array5 = new Float32Array([-0.75, 0.5, 0.25, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -0.25, -1.0, 1.0, -1.0, 1.0, -0.25, 0.5, -1.0, 1.0, -0.5, 0.75, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, -0.5, -0.5, -0.75, -0.25, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, -1.0, 1.0, -0.5, 0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 0.25, -1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, 0.25, 0.5, -1.0, -0.5, -0.75, -1.0, 0.25, 0.0, -0.75, 1.0, 1.0, 0.25, -1.0, -0.75, -0.25, -0.5, 0.25, 0.75, 1.0, -1.0, 0.75, 0.75, 0.0, ]);
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture000.destroy();
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array6 = new Float32Array([0.5, -0.25, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.75, -0.75, -0.5, 0.25, 0.25, -1.0, 1.0, 0.5, -0.5, -0.25, 0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -0.25, 0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 0.5, 0.75, 0.75, 0.5, -0.75, -0.25, -1.0, 0.25, 1.0, -0.5, 1.0, 1.0, 0.5, -1.0, -0.25, 0.0, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, 1.0, 0.25, 0.25, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.75, -0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, -0.25, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, 0.25, ]);
    texture001.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    device00.pushErrorScope("validation");
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
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
    
    texture005.destroy();
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    texture002.destroy();
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    texture004.destroy();
    
    
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
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query002.destroy()
    texture007.destroy();
    query001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture006.destroy();
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const array7 = new Float32Array([0.0, 0.25, 0.0, -0.5, 1.0, 1.0, -1.0, -0.75, 0.0, 0.25, -0.75, -0.75, 0.5, 1.0, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, -0.5, -0.75, -0.25, -1.0, 0.75, 0.5, 1.0, -0.5, -1.0, 1.0, -1.0, 0.75, -0.5, 0.75, 1.0, -1.0, -0.5, 0.25, -1.0, -0.75, -1.0, 0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -1.0, -1.0, 0.5, -0.75, 0.0, 1.0, 0.25, 0.25, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -0.5, -1.0, 0.5, 0.75, -0.75, 0.0, -0.75, 0.75, 0.75, -0.75, -0.5, -0.25, 0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.0, 0.75, 1.0, 0.5, -1.0, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    query002.destroy()
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    device50.pushErrorScope("out-of-memory");
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
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
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.destroy();
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_bundle_encoder501.popDebugGroup();
    
    texture500.destroy();
    const array8 = new Float32Array([0.75, -0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.0, -1.0, -0.5, 0.0, 1.0, 0.25, -0.75, 0.5, -0.75, -1.0, 1.0, -0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.0, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.25, 0.25, -0.5, 0.25, -1.0, 0.5, 0.0, 0.75, 0.5, -1.0, -0.25, -0.5, -1.0, 1.0, -0.25, -0.25, 0.0, -1.0, 0.5, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, -1.0, 1.0, -0.25, 0.5, 0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 1.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.75, -0.25, -1.0, 1.0, -0.75, -0.5, 0.25, 0.5, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.0, 0.25, ]);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    buffer500.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device60.pushErrorScope("validation");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query600.destroy()
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    
    
    
    const array9 = new Float32Array([1.0, -0.25, -0.75, -1.0, 0.0, -0.5, 0.0, 0.75, -1.0, -1.0, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 1.0, -0.25, -0.75, -0.25, 0.25, 0.0, -0.25, 1.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.75, 0.5, 0.5, -0.25, -1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, -1.0, -0.5, -0.5, -0.5, 0.25, 0.75, -0.5, 1.0, -0.5, 0.5, -0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.5, -0.25, 0.0, 0.25, 0.75, -0.25, 0.0, -0.75, 0.75, 1.0, -0.5, 0.75, -0.5, 0.5, 0.0, 1.0, -1.0, 1.0, ]);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture600.destroy();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const array10 = new Float32Array([0.25, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.75, 0.0, 0.5, -0.5, -0.5, -0.5, 0.5, -1.0, -0.25, 0.0, 0.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 0.0, 0.0, 0.25, -0.25, 0.75, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 0.5, -0.75, -0.75, -0.25, 0.0, -0.75, 1.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.75, -0.25, 0.75, 0.0, 0.0, -0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.5, 1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.25, -0.75, -0.5, ]);
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder600.popDebugGroup();
    const array11 = new Float32Array([0.75, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -0.75, -1.0, 1.0, -1.0, 0.5, 0.75, 0.5, -1.0, -0.75, 1.0, 0.5, -1.0, -0.75, -0.25, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.0, 0.25, -0.75, -0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 1.0, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 0.5, 0.5, -0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, -0.25, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, -1.0, 0.5, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, -0.75, 0.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.75, ]);
    
    
    
    
    const array12 = new Float32Array([0.5, 0.0, -0.25, -0.5, 0.5, -1.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.0, -0.75, 0.75, -0.5, 0.25, 0.0, -0.25, -0.25, 1.0, -0.5, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -0.5, 0.25, 0.75, -1.0, 0.5, 0.75, 1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.5, -1.0, 0.25, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, -1.0, -0.5, 0.5, 0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, -0.25, 0.75, -0.25, -0.75, -1.0, 0.75, 0.75, 0.0, -0.75, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, 1.0, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.25, ]);
    
    buffer601.destroy()
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
    device60.pushErrorScope("validation");
    
    
    
    const array13 = new Float32Array([0.5, -0.25, -1.0, 1.0, -0.75, -1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, -1.0, 1.0, 0.0, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.5, -0.5, -0.5, 0.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.25, 0.25, -0.25, -1.0, 0.5, 0.5, 0.25, -0.25, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, -0.25, 1.0, -0.75, -0.75, -0.5, 0.5, -0.75, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.75, 0.0, 0.0, 0.0, 0.75, -0.25, 0.25, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.75, -1.0, 0.75, -0.5, -0.75, 0.25, ]);
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer600.destroy()
    
    const array14 = new Float32Array([-0.75, 0.75, -1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 0.25, 0.0, -0.5, -0.25, 0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 1.0, -0.25, 0.5, 0.5, -1.0, 0.0, -0.5, 0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 0.25, 0.25, -0.25, 0.5, -0.75, 1.0, 1.0, 0.0, 0.75, 0.5, 1.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -0.25, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, -0.75, 0.0, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, 0.75, -1.0, 0.0, 0.75, 0.25, 0.25, -0.5, 0.0, 0.5, 0.25, 1.0, 0.75, 0.5, -1.0, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    query601.destroy()
    
    device70.pushErrorScope("validation");
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query601.destroy()
    
    query700.destroy()
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
    
    query700.destroy()
    query700.destroy()
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query700.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    buffer602.destroy()
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const array15 = new Float32Array([-0.75, 0.0, 0.0, 0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, -0.25, -1.0, 1.0, 0.75, 1.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.25, -0.5, -0.75, -1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, 0.75, -1.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.25, -0.5, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, -0.25, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, 0.5, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.pushErrorScope("validation");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.popDebugGroup();
    
    query700.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_bundle_encoder600.popDebugGroup();
    query600.destroy()
    
    
    
    
    query701.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query601.destroy()
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    device60.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture602.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query701.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_bundle_encoder602.pushDebugGroup("group_marker");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device70.destroy();
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const array16 = new Float32Array([0.75, 0.25, 1.0, -0.25, -0.75, 0.5, 0.5, 0.5, 1.0, 0.75, 0.75, 1.0, 0.75, 1.0, -1.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.75, 0.5, 0.5, -0.75, 1.0, -0.25, -1.0, 0.25, -1.0, -0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 0.5, -0.25, 0.25, -1.0, 0.5, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.25, 0.75, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.75, 0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -0.25, -1.0, 0.5, -1.0, 0.25, 0.5, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, -0.75, ]);
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
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
    
    const array17 = new Float32Array([-1.0, -0.25, -0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, -0.25, -0.75, 1.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.0, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.5, -0.25, -1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, 0.75, -0.25, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, 0.5, 0.5, -1.0, 1.0, -0.25, 0.25, -0.5, 0.5, 1.0, -0.5, -0.25, -0.75, -1.0, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, ]);
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_bundle_encoder602.popDebugGroup();
    
    texture603.destroy();
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    texture601.destroy();
    
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    query602.destroy()
    
    
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
    query602.destroy()
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    query600.destroy()
    
    
    device100.pushErrorScope("out-of-memory");
    
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    texture1000.destroy();
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query602.destroy()
    render_bundle_encoder600.popDebugGroup();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    
    
    const texture606 = device60.createTexture({
        label: "texture606",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}