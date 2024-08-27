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
    
    const array0 = new Float32Array([0.0, 0.5, 0.0, -0.5, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.0, -0.75, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, -0.5, -0.25, -0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.5, -0.5, 1.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 0.75, 0.0, 1.0, 1.0, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, 0.5, ]);
    
    const array1 = new Float32Array([-0.5, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, 0.5, 1.0, 0.0, -0.5, 1.0, 1.0, -0.5, -0.5, -0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.75, -0.25, 1.0, -0.25, 0.5, 0.75, 0.75, -0.75, 0.25, 0.5, 0.5, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.75, 0.0, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 0.75, 1.0, 0.0, 0.0, 0.75, 0.75, -1.0, -0.5, -0.25, -0.25, -1.0, 0.75, 0.25, 0.5, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.75, -0.5, -1.0, 1.0, 0.25, -1.0, 0.75, -1.0, 0.0, 0.75, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, -0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 0.25, 0.25, -0.75, -0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 0.5, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, 0.5, 0.0, -1.0, 1.0, -0.25, 0.25, 0.25, 0.5, -0.75, 0.25, 0.0, -1.0, -1.0, -0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, 0.5, -0.25, -0.75, -0.25, 0.75, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -0.5, 0.75, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.25, ]);
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array3 = new Float32Array([0.75, 0.5, 0.25, 0.75, 0.25, -0.25, 0.0, -0.5, 0.75, -0.5, 0.5, -0.5, -0.25, 1.0, -1.0, -1.0, -0.75, -0.75, 1.0, 0.75, -1.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, 0.75, 0.75, 0.5, -1.0, 0.75, 1.0, -0.25, 0.25, 0.75, -0.25, -0.75, 0.5, 0.5, -1.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, 1.0, -0.5, 1.0, -1.0, 0.5, -0.25, 0.5, 0.0, 0.5, -0.5, 0.75, 0.25, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.25, 0.25, -0.5, 0.5, -1.0, 0.5, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture000.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.destroy();
    const array4 = new Float32Array([0.0, 1.0, -0.25, 0.25, 0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, -0.5, -1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 0.75, 0.0, -0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.0, -0.5, -1.0, 0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, -0.75, 0.0, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, -1.0, 0.25, -0.25, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, 0.5, 0.5, 1.0, 0.0, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.25, -0.25, -1.0, -0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.25, 1.0, -0.75, -0.75, -0.25, 0.75, ]);
    const array5 = new Float32Array([0.25, 0.25, 0.5, -1.0, 0.75, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -0.75, 0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.75, 0.0, -1.0, 1.0, 0.25, 0.5, -1.0, 0.0, 1.0, -0.25, 0.75, 0.25, 0.0, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 0.5, -1.0, 1.0, 0.5, -0.5, 0.25, 0.75, 0.5, -1.0, -0.75, 0.75, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, 0.5, -1.0, 0.75, 1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -0.75, 0.75, 0.75, -1.0, -0.5, 1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, -0.5, 0.75, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, -1.0, 1.0, ]);
    
    const array6 = new Float32Array([-0.5, 0.0, 0.25, 0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.0, 1.0, 0.75, -0.75, -1.0, -0.25, 0.25, -0.75, -0.25, -0.75, 0.5, -0.25, -0.75, 1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 0.75, 0.0, -1.0, -0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.25, 0.5, 1.0, 0.5, 0.25, 0.0, 0.0, 0.25, -0.75, -1.0, 0.75, -0.5, -0.75, 1.0, 1.0, -1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.25, -0.25, 1.0, 0.25, -0.5, 0.25, 0.25, 1.0, 0.5, -0.5, 0.0, -0.5, 0.0, 0.5, ]);
    
    
    const array7 = new Float32Array([-1.0, 0.25, 0.0, 0.5, -0.75, -0.75, -0.25, -0.5, 0.5, 0.25, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, -0.5, 0.75, -1.0, 0.5, -0.75, -0.25, 0.25, 0.5, 0.0, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.75, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, 0.75, 0.5, -0.25, 1.0, -0.75, -1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.25, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 1.0, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.75, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device20.destroy();
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    texture100.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    
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
    
    
    texture101.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    buffer101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.pushErrorScope("internal");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer401.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer400.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture400.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder601.insertDebugMarker("marker");
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    texture102.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device70.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const array8 = new Float32Array([0.0, -0.75, 0.25, -0.25, -0.75, 0.25, -0.5, -1.0, 0.5, 0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 0.0, -1.0, 1.0, 0.0, -0.5, 1.0, -1.0, -0.75, -1.0, 0.25, 0.25, 0.25, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -1.0, -0.25, 0.75, -1.0, 0.0, -0.75, -0.25, 0.25, -1.0, 0.5, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.75, -0.5, -1.0, -1.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, -0.5, -0.25, 0.25, 0.0, 0.5, ]);
    
    
    
    device80.destroy();
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    texture701.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.pushErrorScope("validation");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device70.pushErrorScope("out-of-memory");
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    texture600.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    texture700.destroy();
    
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    texture401.destroy();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const array9 = new Float32Array([1.0, -0.75, -0.75, 0.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, 0.5, 0.75, -0.25, 0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 1.0, -1.0, 0.0, -0.75, 0.75, -0.5, -0.25, -0.75, -1.0, -1.0, -0.75, 0.25, 1.0, -0.25, 0.25, -0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 1.0, -0.5, -1.0, 0.75, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 1.0, 1.0, 0.0, -0.75, -0.25, 0.25, 0.5, -0.25, -0.75, -0.5, -1.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, -0.5, -0.75, -0.5, -0.75, 0.25, 0.25, 0.25, 0.25, -1.0, -0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.75, ]);
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    device70.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const array10 = new Float32Array([1.0, 0.0, -0.75, -0.5, 0.0, -1.0, -0.5, 0.0, 0.5, 0.25, 0.25, -1.0, 0.5, -0.5, -0.5, -1.0, 0.0, 0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, -0.5, 0.5, -0.25, 0.25, -0.25, -0.5, 0.5, 0.25, 1.0, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, 0.25, -0.25, -0.75, 1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.25, -1.0, -0.25, -0.75, 0.5, 0.25, -1.0, -0.25, -1.0, 0.0, 1.0, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.5, 0.25, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.5, -0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, 0.75, ]);
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
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer103.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    device90.destroy();
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    buffer403.destroy()
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    buffer104.destroy()
    
    const array11 = new Float32Array([0.5, 1.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.25, 1.0, -1.0, -0.75, 0.0, -1.0, 1.0, -0.75, -0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.75, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, 0.75, -0.25, -0.5, -0.25, 0.25, 0.75, -1.0, -0.5, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 0.75, 0.75, -1.0, -1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, 1.0, -0.25, -0.25, 1.0, 0.25, -0.75, -0.75, -0.75, 0.5, 0.25, 0.0, -1.0, 0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -1.0, ]);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    
    
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
    render_bundle_encoder102.insertDebugMarker("marker");
    device60.pushErrorScope("out-of-memory");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    device110.destroy();
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    buffer402.destroy()
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    buffer601.destroy()
    
    
    texture402.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    
    texture403.destroy();
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
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
    render_bundle_encoder600.insertDebugMarker("marker");
    
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
    
    
    device140.pushErrorScope("out-of-memory");
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const array12 = new Float32Array([-0.25, -0.5, -0.5, -0.5, -0.75, -0.5, 0.75, -0.25, 0.0, -0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.75, 0.0, 0.25, 0.5, 0.25, 1.0, 0.0, 0.75, -0.5, -0.75, 0.5, -0.75, -1.0, 0.25, 0.0, -0.25, -0.5, -0.5, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 0.25, 0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.25, -0.5, 0.75, -0.25, -0.75, 0.75, -0.5, -0.5, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 0.0, 0.75, -0.75, 0.25, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, -0.75, 0.5, ]);
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device130.destroy();
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture601.destroy();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device120.pushErrorScope("validation");
    
    buffer1201.destroy()
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}