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
    const array0 = new Float32Array([0.25, 0.25, 0.0, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 1.0, 0.0, 0.75, -1.0, 1.0, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 0.25, 0.0, -1.0, -0.25, 1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, -1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, -0.25, 0.5, 0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 1.0, 0.75, -0.75, 0.25, 0.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const array1 = new Float32Array([-0.25, -0.5, -1.0, -0.5, -0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -0.75, -0.5, 0.75, -0.25, -0.25, 0.0, 0.75, -0.75, -1.0, -0.25, -0.5, -1.0, -0.25, -1.0, 0.5, -0.75, 0.0, 1.0, 0.75, -0.25, 0.75, -0.25, 0.5, -0.75, -0.25, 1.0, -0.25, -0.5, 0.25, 0.75, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.0, 1.0, 0.75, 0.5, 1.0, -0.75, -1.0, 0.0, 0.25, -0.5, -1.0, -0.25, 1.0, 0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 0.0, 0.5, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 1.0, 0.25, -0.75, -0.5, -1.0, 1.0, -1.0, 0.25, -0.5, -1.0, -1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, -1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device30.destroy();
    
    texture200.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    buffer200.destroy()
    
    
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query200.destroy()
    query200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    
    query200.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder203.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    texture201.destroy();
    device20.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([0.25, 0.25, 1.0, -0.5, -0.25, 0.75, -1.0, 0.0, 0.0, -0.75, 0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, -0.25, -0.25, 0.0, 1.0, 0.75, 1.0, -0.25, 1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.25, 0.0, 0.25, -0.5, 0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -0.5, 0.0, -0.25, -0.5, 0.5, -0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -1.0, -1.0, -0.75, -1.0, -0.25, 1.0, 0.25, -1.0, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.5, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 0.5, 0.0, 0.0, 0.25, 1.0, 0.5, 0.25, 0.25, -1.0, 0.5, -1.0, 0.0, 0.5, -0.75, 0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    buffer201.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    buffer200.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query200.destroy()
    render_bundle_encoder203.insertDebugMarker("marker");
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    query201.destroy()
    
    query201.destroy()
    buffer202.destroy()
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const array3 = new Float32Array([-1.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, -1.0, -1.0, 0.5, 0.25, 0.25, -0.75, 0.0, -1.0, 1.0, -0.75, -0.25, -1.0, 0.25, 0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, -0.75, 0.0, -0.25, 1.0, 0.5, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.25, -0.75, -1.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 1.0, ]);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array4 = new Float32Array([0.25, -1.0, -1.0, -0.5, -0.5, 0.25, -0.25, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, -0.5, 0.25, 0.0, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, -0.75, -0.5, -0.25, -0.75, 0.5, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.5, 0.5, 1.0, -0.25, -1.0, -0.75, 0.0, -0.25, 0.75, -0.75, -0.5, 0.25, -0.5, -0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.25, 0.75, 0.75, 0.25, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.5, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.beginOcclusionQuery(0)
    device20.pushErrorScope("internal");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder203.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    render_pass_encoder2000.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.submit([]);
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query200.destroy()
    device50.pushErrorScope("out-of-memory");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query200.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2001.executeBundles([render_bundle_encoder200, ])
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
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
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device20.queue.submit([]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    texture000.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    query202.destroy()
    
    render_pass_encoder2000.setStencilReference(1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
    render_pass_encoder2000.endOcclusionQuery()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer500.destroy()
    texture202.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device50.pushErrorScope("internal");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.executeBundles([])
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.75, 0.75, 0.25, 0.5, -0.5, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.25, 0.5, -0.25, 0.5, -0.75, 0.25, 1.0, 1.0, 1.0, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, -0.5, -1.0, -1.0, 1.0, 1.0, 0.0, 0.5, 0.25, -1.0, 1.0, -0.25, 0.25, -0.5, -0.5, -0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.75, 0.0, -0.75, 0.75, -1.0, -0.5, 1.0, 0.0, -0.75, 0.0, 0.75, -0.5, -0.5, -0.5, -0.75, 0.75, 0.75, 0.5, 1.0, -0.75, 0.25, 0.25, -0.25, 0.75, -0.5, -0.5, 0.25, 0.5, -0.5, 0.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, 0.5, -0.75, -0.75, -0.75, 1.0, 0.25, -1.0, 0.5, ]);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([-1.0, 0.5, -0.5, 1.0, 0.0, -1.0, 1.0, -1.0, 0.75, -0.25, -0.75, 1.0, 0.25, -0.25, 0.25, 0.5, 0.25, 0.5, -0.5, 0.25, 0.75, 1.0, 0.75, 0.25, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, 0.75, -1.0, 0.25, 0.75, 0.0, 0.0, -0.5, 0.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, -1.0, -0.25, 0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, -0.5, 1.0, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -0.5, -0.5, -0.5, 0.75, -0.75, 0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 0.0, -0.25, 0.25, 0.5, ]);
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device80.pushErrorScope("out-of-memory");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    texture800.destroy();
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.destroy();
    render_pass_encoder8010.setStencilReference(1);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    buffer700.destroy()
    buffer800.destroy()
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2000.setStencilReference(1);
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_buffer801 = command_encoder801.finish();
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    buffer501.destroy()
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    render_pass_encoder8010.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    buffer500.destroy()
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device70.pushErrorScope("out-of-memory");
    buffer702.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const command_buffer800 = command_encoder800.finish();
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    device80.pushErrorScope("internal");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    
    
    
    
    
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder8000.popDebugGroup()
    
    const compute_pass_encoder8030 = command_encoder803.beginComputePass({ label: "compute_pass_encoder8030" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.insertDebugMarker("marker");
    command_encoder803.copyTextureToTexture(
        {
            texture: texture801
        },
        {
            texture: texture801
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    query702.destroy()
    
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device80.queue.submit([command_buffer800, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    query800.destroy()
    device110.pushErrorScope("validation");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder8020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    texture701.destroy();
    render_pass_encoder8020.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
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
    
    
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture502.destroy();
    
    compute_pass_encoder8030.insertDebugMarker("marker")
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder8010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query800.destroy()
    device50.pushErrorScope("internal");
    const array7 = new Float32Array([-0.75, -1.0, 0.0, 0.5, -0.5, 0.25, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.5, -0.5, -0.5, 1.0, 0.0, -0.25, 1.0, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.75, -1.0, -0.5, 0.25, 1.0, -0.25, -0.25, -1.0, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, 0.5, -0.75, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 0.5, -0.25, -0.25, -0.5, -0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 0.75, 0.75, 0.75, -0.25, 0.5, 1.0, 0.25, -0.75, 0.25, -0.5, -0.75, 0.0, 0.25, 0.5, -0.5, 0.25, 0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -0.25, 0.75, 0.0, -0.25, 0.0, -1.0, 0.0, ]);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    device80.pushErrorScope("internal");
    
    
    const compute_pass_encoder8031 = command_encoder803.beginComputePass({ label: "compute_pass_encoder8031" });
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
    
    device70.queue.writeBuffer(buffer703, 0, array7, 0, array7.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder8000.popDebugGroup()
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer802.destroy()
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
    query1100.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_pass_encoder8020.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    render_pass_encoder8020.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8031.setPipeline(compute_pipeline800);
    
    render_pass_encoder8020.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder8020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder8030.pushDebugGroup("group_marker")
    render_pass_encoder8010.executeBundles([])
    buffer801.destroy()
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device90.destroy();
    device60.destroy();
    query1100.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer703.destroy()
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder8020.executeBundles([])
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder8010.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1200.destroy()
    compute_pass_encoder8000.setPipeline(compute_pipeline800);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pass_encoder11000 = command_encoder1100.beginComputePass({ label: "compute_pass_encoder11000" });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
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
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    render_pass_encoder8020.executeBundles([])
    render_pass_encoder8020.executeBundles([render_bundle_encoder800, ])
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    texture801.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer704.destroy()
    device80.pushErrorScope("out-of-memory");
    
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer802 = command_encoder802.finish();
    compute_pass_encoder8030.setPipeline(compute_pipeline800);
    device80.queue.submit([command_buffer802, ]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1101 = command_encoder1101.finish();
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder8031.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder8031.popDebugGroup()
    compute_pass_encoder11000.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder8030.popDebugGroup()
    device110.queue.submit([command_buffer1101, ]);
    device80.queue.submit([command_buffer800, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder8030.popDebugGroup()
    compute_pass_encoder11000.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    device40.queue.submit([]);
}