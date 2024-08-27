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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array0 = new Float32Array([-0.75, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 0.0, -1.0, 0.75, 0.75, 0.25, 1.0, 1.0, 0.0, 0.25, 1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 0.5, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.0, 0.5, -0.25, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, -0.75, 0.0, -0.25, -0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 0.75, 1.0, -0.25, 0.5, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, ]);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.pushErrorScope("internal");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    device10.pushErrorScope("out-of-memory");
    const array1 = new Float32Array([-1.0, -0.25, 0.25, 0.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.5, -1.0, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 1.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, -0.5, -1.0, -0.75, 0.0, -0.25, 1.0, 0.25, 1.0, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, 0.5, 0.75, 0.75, -1.0, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, -0.5, 0.75, 0.0, -0.5, 1.0, -0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.25, -1.0, 0.25, -0.25, -0.25, 0.0, 0.75, 0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    query101.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const array2 = new Float32Array([0.0, 0.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.75, 0.25, -0.25, -0.75, 1.0, 0.25, 1.0, -0.75, -1.0, -0.25, 0.0, -0.5, -0.5, -1.0, -0.5, 0.5, -1.0, 0.75, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.5, 0.0, 0.75, 0.5, 0.5, -0.25, -0.75, 0.25, 0.0, -0.75, 0.75, 0.0, 0.0, 0.0, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, 0.25, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, -0.5, 0.25, -0.25, -0.5, -0.5, 0.25, -1.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.5, -0.5, -0.25, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.75, -0.25, 0.0, -0.75, -0.25, -0.75, -0.25, -1.0, 0.0, -0.25, -0.25, 0.5, 1.0, -0.75, ]);
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
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
    render_bundle_encoder103.popDebugGroup();
    const array3 = new Float32Array([1.0, 0.25, -0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.25, -1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.25, 0.25, 0.25, -0.75, 0.25, 0.0, 0.75, 0.0, -1.0, -1.0, -0.25, 0.5, -0.75, 0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, -0.5, -0.25, 1.0, 0.0, -0.25, 0.0, 0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 0.5, -0.75, 0.0, 0.0, 0.5, -0.5, 0.5, -0.25, -0.75, 0.25, 0.25, 0.75, -0.75, -1.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, 0.25, 0.75, 0.0, -0.75, -1.0, -1.0, -0.75, -1.0, -1.0, 0.75, -1.0, 0.5, ]);
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
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device10.pushErrorScope("internal");
    query101.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const array4 = new Float32Array([0.75, 1.0, 0.5, -0.25, 0.25, 0.5, 1.0, 0.75, 0.75, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -1.0, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.5, -1.0, 1.0, 0.5, 0.25, 0.25, 0.75, 0.75, 1.0, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, -1.0, -0.25, -0.25, -1.0, 0.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.5, 0.25, 0.25, -0.75, 0.0, -1.0, -0.5, 0.75, -0.5, 1.0, 0.25, 0.5, 0.25, 0.5, -0.25, 0.0, 0.0, 0.5, -0.5, 1.0, -0.25, -0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.25, -0.75, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query101.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder103.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const array5 = new Float32Array([0.25, -1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.25, 0.25, 0.75, -0.75, -1.0, -0.5, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.0, -0.5, 0.5, -0.5, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -1.0, 1.0, 0.25, 0.25, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.75, -0.25, 1.0, -0.5, -1.0, 0.5, -0.75, 1.0, -1.0, 0.25, 0.5, -1.0, -0.25, -0.75, 0.75, 0.5, 1.0, -1.0, -1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, -0.75, 0.5, 1.0, -0.75, 0.5, -0.25, 0.0, -0.5, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, -0.5, 0.25, -1.0, -0.75, -1.0, 0.75, 0.75, -0.5, -1.0, -1.0, 0.0, 0.0, -1.0, -1.0, -0.75, ]);
    device10.pushErrorScope("internal");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.destroy();
    device50.pushErrorScope("validation");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    const array6 = new Float32Array([0.0, 0.25, -0.5, 0.5, 0.75, -0.25, -0.5, 0.25, 0.5, -1.0, -0.25, -0.75, 0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 0.75, 0.0, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, -0.5, -0.5, 0.75, -0.25, 0.25, 0.5, -0.25, 0.75, -1.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.25, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.25, 0.5, -0.5, -0.5, -1.0, -0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, -0.75, 0.0, -0.25, -0.25, -0.25, 0.25, 0.5, 0.25, ]);
    
    
    query600.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder600.popDebugGroup();
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device40.pushErrorScope("out-of-memory");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    query601.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device60.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query600.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query301.destroy()
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    query601.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    query301.destroy()
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    query601.destroy()
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const array7 = new Float32Array([-0.25, 0.0, 0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 0.5, 0.0, -0.25, 0.75, -1.0, 0.5, -1.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.75, -0.25, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.5, -0.25, 0.5, -0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, 1.0, 0.75, -0.75, 0.0, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.5, -0.75, 0.0, -0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.0, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, -0.5, -0.25, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.5, -0.25, -0.25, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, ]);
    query603.destroy()
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    query300.destroy()
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    query602.destroy()
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query604.destroy()
    query600.destroy()
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    query301.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    query300.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    query302.destroy()
    query300.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
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
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    device30.pushErrorScope("validation");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    query304.destroy()
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query304.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    query101.destroy()
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device80.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query306.destroy()
    query304.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    query603.destroy()
    query303.destroy()
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const array8 = new Float32Array([0.25, 0.5, 0.0, 1.0, -1.0, 0.0, -0.25, 0.75, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, 1.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.5, 0.5, -1.0, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.0, 0.0, -0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, 1.0, 0.0, 0.75, -0.75, 0.75, 1.0, 0.25, 0.75, -0.25, -0.75, 0.75, 0.5, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, 1.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, -0.5, ]);
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
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
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const array9 = new Float32Array([-0.25, -0.75, -0.5, -1.0, 0.75, 0.75, -0.75, 0.25, 0.5, -0.5, 0.25, -0.75, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, 0.25, 0.25, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 0.0, 0.0, -1.0, 0.75, 1.0, -1.0, 0.5, 0.75, -1.0, 0.5, -1.0, 0.5, -1.0, -0.25, -0.75, -0.75, 0.25, -0.75, 0.5, -0.75, 0.5, -0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, -1.0, -1.0, 0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -0.75, 1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 0.0, 0.5, 0.75, -0.25, 0.25, 0.5, -1.0, 0.75, -0.75, 0.0, 0.0, -0.5, 1.0, 0.75, -0.25, 0.0, ]);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query306.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    query304.destroy()
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
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
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    device30.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    query302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    query300.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query306.destroy()
    
    query301.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    query306.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device70.pushErrorScope("out-of-memory");
    
    query308.destroy()
    
    
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder103.popDebugGroup();
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
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query306.destroy()
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    query304.destroy()
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    device80.destroy();
    
    query303.destroy()
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device80.pushErrorScope("out-of-memory");
    const query3010 = device30.createQuerySet({
        label: "query3010",
        type: "occlusion",
        count: 32,
    });
    const query3011 = device30.createQuerySet({
        label: "query3011",
        type: "occlusion",
        count: 32,
    });
    const query3012 = device30.createQuerySet({
        label: "query3012",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query3011.destroy()
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    query601.destroy()
    
    query308.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query3011.destroy()
    
    
    
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    render_bundle_encoder700.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    query308.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query306.destroy()
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    query302.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query3012.destroy()
    query300.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    query900.destroy()
    device70.destroy();
    query304.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query305.destroy()
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query308.destroy()
    
    query604.destroy()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    query3012.destroy()
    
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    const array10 = new Float32Array([0.75, 1.0, 0.5, -1.0, 0.0, 0.25, 0.75, 1.0, -0.25, -1.0, 0.25, -0.5, -0.75, 1.0, 0.0, -0.25, -1.0, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, -1.0, 0.5, 0.5, -1.0, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 0.0, -0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -0.75, -0.75, 0.5, 0.5, -0.25, -0.75, -1.0, 0.0, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 0.0, 1.0, 0.75, -0.75, -0.25, 0.25, -0.75, 0.25, -0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, -0.5, 0.0, -0.5, -0.25, -1.0, 0.75, -0.75, -0.25, -0.5, 0.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, -1.0, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, -0.25, -1.0, ]);
    query308.destroy()
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    render_bundle_encoder802.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query3010.destroy()
    render_bundle_encoder901.insertDebugMarker("marker");
    
    query300.destroy()
    query302.destroy()
    render_bundle_encoder902.popDebugGroup();
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    render_bundle_encoder902.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query301.destroy()
    query304.destroy()
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device60.pushErrorScope("internal");
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    query308.destroy()
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}