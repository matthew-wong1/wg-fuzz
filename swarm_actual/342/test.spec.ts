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
    const array0 = new Float32Array([0.0, -0.5, -0.75, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 0.0, 0.0, -0.25, 0.5, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -1.0, -1.0, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, 1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 1.0, -0.75, 1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -0.25, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 1.0, -1.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 0.0, -1.0, 0.5, -1.0, 0.0, -0.25, -0.5, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, -0.75, -0.5, -0.75, 0.25, 0.5, -0.5, 0.25, -1.0, 0.25, ]);
    const array1 = new Float32Array([-0.75, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 0.75, 1.0, -1.0, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.25, -0.25, 0.5, -0.5, -0.75, 0.5, 0.0, -0.5, 1.0, -1.0, -0.25, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, 0.25, 0.5, 1.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 0.0, -0.5, -0.5, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.5, 0.0, -1.0, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 0.5, 1.0, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array2 = new Float32Array([0.5, 1.0, -1.0, -0.5, -0.75, -0.75, 0.5, 0.5, 0.0, 0.75, 0.0, 0.25, -0.5, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, -0.25, -0.5, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 0.5, 0.0, -1.0, 0.25, 0.25, 0.5, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.75, 1.0, 0.0, -0.5, 0.0, -1.0, 1.0, -0.75, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.5, 0.75, -0.25, 0.25, -0.25, 0.0, -1.0, -1.0, 0.0, 0.75, 0.75, 1.0, -1.0, -0.5, 0.5, 0.75, -0.5, 1.0, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, -0.5, -0.75, 0.5, -0.75, 0.75, 0.25, 0.75, -0.25, -0.75, 1.0, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("validation");
    const array3 = new Float32Array([0.25, 0.25, -0.5, 1.0, -1.0, 0.0, 1.0, 0.5, 0.75, 0.25, 0.25, 0.25, -0.25, 0.0, -0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, 0.5, -1.0, 0.75, 1.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, 1.0, 0.0, 0.0, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, -0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 0.75, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.5, 0.75, -0.25, -1.0, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, 1.0, -0.25, 1.0, -0.75, -0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, 0.0, -0.25, -1.0, -0.25, 1.0, 1.0, 0.75, 0.0, -0.25, 0.0, -0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -0.75, 1.0, -0.5, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.5, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 0.75, -1.0, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.75, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, -0.5, 1.0, 0.5, 0.0, -0.75, -0.75, 1.0, -0.25, 0.25, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, 0.25, 1.0, -0.5, -1.0, -1.0, -0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.0, 0.75, -0.75, -0.25, -1.0, 0.25, -1.0, 0.25, 1.0, 0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, 0.25, 0.75, -0.75, 0.25, -0.25, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array5 = new Float32Array([0.5, -0.25, -0.25, -1.0, -1.0, 0.75, -0.75, -0.25, 0.25, -0.5, -0.25, -0.75, 0.5, -1.0, 0.0, -1.0, 1.0, 1.0, 0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, -0.25, 0.25, 0.0, 0.25, 1.0, 0.0, 0.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.25, 0.75, 0.25, 0.25, 0.0, 0.25, 0.0, 0.0, -0.5, 1.0, 0.25, -1.0, -1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 1.0, -0.25, 0.25, 0.25, 0.5, 0.0, 0.25, -0.25, -1.0, 0.0, 0.25, 0.25, -1.0, -0.5, 0.5, 0.5, -0.5, -1.0, 1.0, -0.25, -0.25, 0.0, 1.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.5, -0.25, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("out-of-memory");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    device00.pushErrorScope("out-of-memory");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer002.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.destroy();
    
    device20.destroy();
    const array6 = new Float32Array([0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 0.25, -0.75, -1.0, -0.25, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, 0.75, 0.75, 0.75, -0.25, 0.5, 0.75, -0.25, 1.0, 0.75, 1.0, -0.75, -0.75, 0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.25, -0.5, -0.5, 0.25, -1.0, 0.75, 0.0, -0.5, 0.0, -0.75, -1.0, 0.25, -0.25, 0.0, -1.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.25, 0.0, 1.0, 0.25, 1.0, -0.75, 0.0, 0.75, -0.75, -1.0, -0.5, -0.5, -0.25, 1.0, -0.5, -0.5, -0.75, -1.0, 0.75, 1.0, 0.75, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, 0.5, 0.5, 1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("validation");
    
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
    device50.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device60.destroy();
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer400.destroy()
    const array7 = new Float32Array([0.75, 0.75, 0.0, 0.75, 0.75, 0.75, -0.5, 1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, -0.75, 0.25, -1.0, 0.0, -0.5, -0.75, -0.5, 0.5, 1.0, 1.0, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 0.5, 0.75, 0.75, 0.0, -1.0, 0.75, -0.75, 0.25, -0.5, -1.0, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 0.75, 0.5, -0.5, -0.25, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.5, 0.75, -1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, -0.5, -0.75, -0.75, -0.5, -1.0, -1.0, 0.5, 1.0, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-0.75, -0.25, 1.0, 0.5, -1.0, 0.25, -1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.5, -0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 1.0, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, -1.0, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -0.75, -0.5, 0.75, 0.75, -0.25, 0.25, -0.25, 0.75, -0.75, -0.5, 0.0, 1.0, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, -1.0, 0.25, -1.0, -0.75, -0.25, 0.5, -0.5, 0.5, 0.75, 1.0, -0.75, 1.0, 0.0, 0.25, 0.0, -0.5, 1.0, 1.0, 1.0, 1.0, 0.0, -0.75, 0.75, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, 0.25, 0.5, 0.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.75, 0.25, 0.0, -0.5, -1.0, ]);
    device40.pushErrorScope("internal");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const array9 = new Float32Array([-0.5, -0.75, 0.0, 0.25, 0.25, 1.0, -0.75, 0.75, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, 0.0, 1.0, -1.0, 0.25, 0.75, -0.5, 1.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.75, 0.75, -0.25, 0.25, 0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.75, -0.25, 0.0, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, -1.0, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, -0.25, 0.5, -0.5, 0.0, 0.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, -1.0, -0.25, 0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -1.0, 1.0, 0.75, -0.75, -0.25, 0.0, 0.25, -0.5, 0.0, -0.5, 0.0, -1.0, 0.25, -1.0, 0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.5, ]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    device40.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array10 = new Float32Array([-1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, -0.25, -0.5, -0.5, -0.25, -0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.25, -0.25, -0.75, 0.0, -0.75, -0.25, 0.0, 0.75, 0.5, -0.5, 0.5, -1.0, 1.0, 0.75, 1.0, 0.0, 0.75, -0.5, 0.25, -0.75, -0.25, 1.0, 0.25, -0.75, 0.0, 0.25, -1.0, -0.75, 0.25, 0.25, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 0.5, -0.75, 0.75, -0.25, -0.75, 0.25, 1.0, 1.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 0.5, -0.75, 0.0, 0.5, -1.0, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, 1.0, -0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, ]);
    const array11 = new Float32Array([0.75, -0.5, 0.0, 1.0, 0.0, -0.5, -0.75, 1.0, -0.25, 0.25, 0.25, 0.5, -1.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.5, 0.5, 0.25, 0.25, -0.5, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, -1.0, -0.25, 0.5, 0.5, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.25, 0.25, 0.75, 0.25, -1.0, -0.5, -0.25, -0.75, 0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.75, -0.25, -0.5, -0.5, -1.0, 0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, -0.5, 0.0, -0.25, 0.75, 1.0, -1.0, 0.75, -0.5, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device70.pushErrorScope("internal");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device90.pushErrorScope("internal");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
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
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device80.destroy();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([-0.75, 0.5, 0.5, -0.75, 0.25, -1.0, -0.5, -1.0, -0.75, 1.0, 0.0, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, 0.0, -0.25, 0.25, 0.5, 0.5, 0.75, 0.5, 0.0, -1.0, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.5, -0.75, 0.25, -1.0, 1.0, 0.75, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.5, -0.25, 0.5, 0.25, -0.5, -1.0, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, -1.0, -0.75, 0.5, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, 0.5, 0.0, -1.0, 0.75, -0.25, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const array13 = new Float32Array([0.0, 0.0, 0.25, -0.5, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, -0.75, 0.75, -0.25, 0.0, -0.25, -1.0, 0.5, -0.25, 1.0, -0.75, 1.0, 0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.25, 1.0, 0.0, 1.0, 0.75, 1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 1.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, -1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 1.0, 1.0, -0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 0.25, -0.75, 0.25, -0.25, 0.0, -0.25, -0.5, 1.0, -1.0, 0.0, 1.0, -0.25, -1.0, 0.75, -0.75, -0.5, 0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -0.5, -1.0, ]);
    
    const array14 = new Float32Array([0.0, -0.25, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.5, 0.0, -0.5, -0.25, 1.0, 0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, -1.0, 0.75, 0.75, 0.25, -0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.75, -0.5, 0.25, -0.5, 1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.25, -1.0, 0.75, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, -0.5, -0.5, -0.75, -0.75, 0.25, -0.75, 1.0, 1.0, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.25, -0.75, 0.0, 0.5, 0.5, 1.0, 1.0, -0.5, -0.5, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, 0.25, 1.0, 0.5, -0.75, -1.0, 0.75, -0.5, 0.75, 0.75, 0.0, 0.5, -0.25, 0.0, 0.75, 0.25, -1.0, 1.0, ]);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array15 = new Float32Array([0.75, 1.0, -0.5, -0.5, 0.75, -0.25, -1.0, -1.0, -0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 0.25, -0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -0.25, -1.0, -0.5, -1.0, 0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.25, 0.5, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.0, -0.25, 0.5, 0.25, 0.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.5, 0.5, -1.0, 0.5, -0.25, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -0.25, -1.0, -0.5, -1.0, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.25, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.0, 0.75, -0.5, -0.5, 0.5, -0.75, -1.0, 0.0, -0.75, -0.75, ]);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device100.destroy();
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device110.destroy();
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
    
    device90.pushErrorScope("out-of-memory");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer901.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device120.pushErrorScope("out-of-memory");
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
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
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
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
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
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
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer900.destroy()
    
    buffer904.destroy()
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
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer1200.destroy()
    
    device140.destroy();
    
    
    buffer1201.destroy()
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
    device70.pushErrorScope("validation");
    
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array16 = new Float32Array([1.0, -1.0, 0.75, 0.0, 0.75, -0.75, 0.75, -0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, -0.5, -0.75, 0.5, -0.25, -1.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.5, 0.25, -0.5, 1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -1.0, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, -0.25, 0.5, 0.0, 0.5, 1.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 1.0, 0.75, 0.5, -1.0, -0.5, -1.0, 1.0, -1.0, 1.0, 0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.75, -0.5, 0.25, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.25, 0.25, -0.5, -1.0, 0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, ]);
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const bind_group_layout905 = device90.createBindGroupLayout({ 
        label: "bind_group_layout905",
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
    
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device160.pushErrorScope("out-of-memory");
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device170.destroy();
    
    
    
    buffer1202.destroy()
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device90.destroy();
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device120.pushErrorScope("out-of-memory");
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array17 = new Float32Array([-0.75, 1.0, 0.5, 0.5, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 0.5, 0.5, 0.75, 0.0, -0.75, -0.75, 0.25, -0.5, -0.75, -0.25, 0.75, -0.25, 1.0, 1.0, -0.25, 0.75, 0.5, 0.25, 0.0, 0.5, -0.75, 0.25, -0.5, 0.75, 0.0, -0.5, -0.5, 0.25, -1.0, -1.0, -0.5, -1.0, -0.75, -1.0, 1.0, -0.25, -0.25, -0.5, -0.5, 0.25, -0.25, 0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, -0.75, 0.5, -0.25, 1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.25, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, 0.5, 0.0, -1.0, 0.25, ]);
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1602 = device160.createBuffer({
        label: "buffer1602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer1602.destroy()
    device120.destroy();
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    
    device190.destroy();
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1602 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1602",
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
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer1600.destroy()
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder2000 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    device70.queue.writeBuffer(buffer704, 0, array1, 0, array1.length);
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
    
    const bind_group_layout2000 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2000",
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
    buffer702.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    device70.queue.writeBuffer(buffer704, 0, array6, 0, array6.length);
    device70.pushErrorScope("validation");
    device70.queue.writeBuffer(buffer704, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer704, 0, array6, 0, array6.length);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device70.queue.writeBuffer(buffer704, 0, array7, 0, array7.length);
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeBuffer(buffer704, 0, array1, 0, array1.length);
    const bind_group_layout2001 = device200.createBindGroupLayout({ 
        label: "bind_group_layout2001",
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
    buffer701.destroy()
    device70.queue.writeBuffer(buffer704, 0, array5, 0, array5.length);
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer704, 0, array15, 0, array15.length);
    device70.queue.writeBuffer(buffer704, 0, array11, 0, array11.length);
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    buffer704.destroy()
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    
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
    const array18 = new Float32Array([-0.25, 0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.5, 0.75, 0.25, 0.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.75, 0.75, -0.5, 0.0, -0.5, -0.75, -0.75, 0.25, -0.5, -1.0, 0.75, -0.5, -1.0, 0.0, -1.0, 1.0, 0.0, 0.25, -0.5, 1.0, -0.75, 1.0, -1.0, 0.75, -0.75, 0.75, -1.0, -1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, -0.5, 0.5, -0.25, 0.25, 0.75, 0.25, 0.0, -0.5, -0.75, -0.25, 1.0, 0.75, 1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 0.5, -0.5, 0.5, -1.0, -0.75, 0.0, 0.25, ]);
    const render_bundle_encoder2001 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    device200.destroy();
    buffer1601.destroy()
    device130.destroy();
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    buffer700.destroy()
    
    
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
    
    
    const render_bundle_encoder1602 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1602",
        colorFormats: ["bgra8unorm"]
    });
    const array19 = new Float32Array([0.0, 0.75, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, 0.75, 0.0, 0.25, 0.75, 0.5, -0.5, -1.0, -0.75, -1.0, -0.5, 0.75, -0.25, -0.25, 0.25, 0.75, -0.5, 0.75, -1.0, -0.5, 1.0, -0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 0.75, 0.0, -1.0, -0.25, 0.0, -0.25, 0.75, 0.25, 0.75, -0.75, 1.0, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, -0.25, 1.0, 0.75, 1.0, -1.0, -0.75, 0.5, 0.5, -0.25, 0.5, -1.0, 0.25, 0.0, -1.0, -0.75, 1.0, -0.25, 1.0, -0.25, 0.5, 0.25, -0.75, 0.5, -0.5, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.75, -0.5, ]);
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout707 = device70.createBindGroupLayout({ 
        label: "bind_group_layout707",
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
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer1500.destroy()
    buffer705.destroy()
    const array20 = new Float32Array([0.0, 0.5, -0.25, -0.25, 1.0, 0.75, -0.75, 0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, -0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 0.5, -0.75, 0.0, -0.25, 0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 0.5, -0.25, -0.5, -0.25, 0.5, 0.75, -0.25, 0.75, 1.0, -0.75, -0.25, -0.75, -1.0, 0.75, 0.25, 0.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.25, 0.5, 1.0, -1.0, -0.5, -0.75, 0.75, -0.5, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.0, -0.5, -0.75, 0.0, -1.0, 1.0, 0.75, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -0.5, ]);
    buffer703.destroy()
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device150.pushErrorScope("internal");
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    const bind_group_layout1603 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1603",
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
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.pushErrorScope("out-of-memory");
    
    
    device70.pushErrorScope("internal");
    const query1602 = device160.createQuerySet({
        label: "query1602",
        type: "occlusion",
        count: 32,
    });
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer1501.destroy()
    const sampler1603 = device160.createSampler( { label: "sampler1603" } );
    
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer706.destroy()
    const bind_group_layout1604 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1604",
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
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    device210.pushErrorScope("validation");
    const query1603 = device160.createQuerySet({
        label: "query1603",
        type: "occlusion",
        count: 32,
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1605 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1605",
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
    const sampler1604 = device160.createSampler( { label: "sampler1604" } );
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const bind_group_layout708 = device70.createBindGroupLayout({ 
        label: "bind_group_layout708",
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
    
    
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler1605 = device160.createSampler( { label: "sampler1605" } );
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    const sampler707 = device70.createSampler( { label: "sampler707" } );
    buffer1502.destroy()
    const bind_group_layout1606 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1606",
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
    const sampler1502 = device150.createSampler( { label: "sampler1502" } );
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    
    const query2101 = device210.createQuerySet({
        label: "query2101",
        type: "occlusion",
        count: 32,
    });
    const sampler708 = device70.createSampler( { label: "sampler708" } );
    const sampler1503 = device150.createSampler( { label: "sampler1503" } );
    const query2102 = device210.createQuerySet({
        label: "query2102",
        type: "occlusion",
        count: 32,
    });
    const array21 = new Float32Array([-1.0, 0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, -0.25, 0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.0, -0.75, 0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 0.75, 1.0, 0.25, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 0.0, -0.75, 0.75, -0.75, -0.25, 0.0, -0.5, 0.75, -1.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 0.0, -0.75, -0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, -0.25, -0.5, -0.25, 0.5, 0.5, ]);
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout1607 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1607",
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
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device210.queue.writeBuffer(buffer2100, 0, array15, 0, array15.length);
    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler1606 = device160.createSampler( { label: "sampler1606" } );
    
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    
    device210.queue.writeBuffer(buffer2100, 0, array4, 0, array4.length);
    const query2103 = device210.createQuerySet({
        label: "query2103",
        type: "occlusion",
        count: 32,
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device210.queue.writeBuffer(buffer2100, 0, array18, 0, array18.length);
    device210.queue.writeBuffer(buffer2100, 0, array0, 0, array0.length);
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout709 = device70.createBindGroupLayout({ 
        label: "bind_group_layout709",
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
    const query1604 = device160.createQuerySet({
        label: "query1604",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device210.queue.writeBuffer(buffer2100, 0, array15, 0, array15.length);
    const bind_group_layout1502 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1502",
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
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    device210.queue.writeBuffer(buffer2100, 0, array11, 0, array11.length);
    device210.queue.writeBuffer(buffer2100, 0, array20, 0, array20.length);
    
    
    
    device210.queue.writeBuffer(buffer2100, 0, array5, 0, array5.length);
    buffer1801.destroy()
    device210.queue.writeBuffer(buffer2100, 0, array15, 0, array15.length);
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array22 = new Float32Array([0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.75, 0.25, -0.75, 0.0, 0.75, 0.5, 1.0, -0.75, -0.5, 1.0, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -0.75, -0.75, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -1.0, 0.75, 0.0, 0.5, 1.0, 0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, -0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.25, -0.5, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -1.0, 1.0, 0.0, -0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 0.75, 0.75, 0.5, -0.75, -1.0, -0.5, 1.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.75, 0.0, -1.0, 0.75, 1.0, 0.25, ]);
    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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
    device210.queue.writeBuffer(buffer2100, 0, array4, 0, array4.length);
    device210.queue.writeBuffer(buffer2100, 0, array11, 0, array11.length);
    device210.queue.writeBuffer(buffer2100, 0, array8, 0, array8.length);
    const buffer1802 = device180.createBuffer({
        label: "buffer1802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device210.queue.writeBuffer(buffer2100, 0, array10, 0, array10.length);
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    device160.pushErrorScope("out-of-memory");
    device210.queue.writeBuffer(buffer2100, 0, array0, 0, array0.length);
    
    device210.queue.writeBuffer(buffer2100, 0, array5, 0, array5.length);
    
    
    const bind_group_layout2101 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2101",
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
    device210.queue.writeBuffer(buffer2100, 0, array20, 0, array20.length);
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    device180.queue.writeBuffer(buffer1802, 0, array12, 0, array12.length);
    device210.queue.writeBuffer(buffer2100, 0, array20, 0, array20.length);
    device150.pushErrorScope("internal");
    
    const bind_group_layout1608 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1608",
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
    device180.queue.writeBuffer(buffer1802, 0, array15, 0, array15.length);
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device180.queue.writeBuffer(buffer1802, 0, array8, 0, array8.length);
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    device180.queue.writeBuffer(buffer1802, 0, array9, 0, array9.length);
    buffer1503.destroy()
    device210.queue.writeBuffer(buffer2100, 0, array21, 0, array21.length);
    device180.queue.writeBuffer(buffer1802, 0, array22, 0, array22.length);
    const bind_group_layout1503 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1503",
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
    device180.queue.writeBuffer(buffer1802, 0, array13, 0, array13.length);
    device210.queue.writeBuffer(buffer2100, 0, array15, 0, array15.length);
    device210.queue.writeBuffer(buffer2100, 0, array6, 0, array6.length);
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}