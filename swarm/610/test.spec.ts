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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    query000.destroy()
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array0 = new Float32Array([-1.0, -1.0, -1.0, 0.75, 0.0, -0.5, 0.75, -0.75, -0.5, 1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.5, 0.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.75, 0.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.75, -0.25, 0.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.25, 0.75, -0.75, -1.0, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.75, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, -0.5, 0.0, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 0.5, 0.5, 0.25, -0.25, 0.5, 0.0, 0.75, 0.75, -0.75, 0.0, -0.25, 0.25, 0.5, -0.25, -0.25, -0.75, 0.75, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query000.destroy()
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    query000.destroy()
    device00.pushErrorScope("validation");
    
    
    device20.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.insertDebugMarker("mymarker");
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
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.popDebugGroup()
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer000.destroy()
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_buffer300 = command_encoder300.finish();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    const array1 = new Float32Array([0.25, 0.75, 0.0, 0.0, 0.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 0.5, -0.25, 0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, -0.25, 0.5, -0.75, 0.75, 1.0, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.5, 0.0, -1.0, 0.5, 1.0, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.0, -0.25, -0.25, 0.5, -1.0, -0.25, 1.0, 1.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.75, 0.5, 0.5, 0.0, -1.0, 0.0, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.75, 0.0, -0.75, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 0.25, -0.75, -1.0, -0.75, 0.25, -0.25, 1.0, 0.0, -1.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder301.clearBuffer(buffer300);
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query003.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder002.popDebugGroup()
    
    
    const command_buffer302 = command_encoder302.finish();
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder000.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder000.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query002.destroy()
    
    
    query001.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    query300.destroy()
    buffer001.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder304.clearBuffer(buffer300);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query002.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    buffer300.destroy()
    query001.destroy()
    query000.destroy()
    const command_buffer303 = command_encoder303.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const command_buffer002 = command_encoder002.finish();
    query004.destroy()
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
    query001.destroy()
    render_bundle_encoder001.popDebugGroup();
    
    
    query002.destroy()
    command_encoder304.insertDebugMarker("mymarker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer400.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("validation");
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    buffer301.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query004.destroy()
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device60.pushErrorScope("out-of-memory");
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
    device40.destroy();
    
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    query000.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer302.destroy()
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_buffer304 = command_encoder304.finish();
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer306 = command_encoder306.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder3010.popDebugGroup()
    query600.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query004.destroy()
    const array2 = new Float32Array([-0.5, 0.25, -0.25, 0.75, 0.75, 0.25, -0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 1.0, -1.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.25, -0.25, 1.0, 0.25, 0.25, 0.0, 0.0, 0.0, 0.75, 0.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.25, -1.0, -0.5, 0.25, 0.0, 0.75, -0.5, -0.25, 0.75, 0.25, -1.0, 0.75, -0.25, -0.5, 0.5, -0.5, -0.5, 0.5, -1.0, 1.0, 1.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.75, -0.75, 0.0, 0.5, 0.0, -1.0, -0.25, 0.5, 0.0, 0.25, -0.75, 1.0, -0.75, -0.5, -1.0, -0.25, -0.25, -1.0, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 0.5, 1.0, -0.5, 1.0, ]);
    
    
    query600.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    query003.destroy()
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer003.destroy()
    const command_buffer308 = command_encoder308.finish();
    buffer002.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    query004.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    query002.destroy()
    device50.pushErrorScope("internal");
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer304, command_buffer306, command_buffer308, ]);
    
    render_bundle_encoder302.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder3010.popDebugGroup()
    
    
    query000.destroy()
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    query003.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device00.pushErrorScope("internal");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query302.destroy()
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder3050.popDebugGroup()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    const array3 = new Float32Array([0.5, 0.75, -0.5, 0.0, -0.5, -0.25, -1.0, 0.25, 0.5, -0.5, 0.25, 0.25, -0.25, -1.0, -0.75, 0.25, 0.75, 0.0, -0.25, 1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, 1.0, 0.25, 1.0, 0.5, 1.0, 1.0, 0.75, 0.75, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 1.0, -1.0, 0.0, -1.0, -0.5, 0.25, 0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, -0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -0.25, -0.25, -1.0, 0.25, -1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.0, -1.0, 0.0, -0.25, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, -0.75, -0.25, -0.25, 0.0, 1.0, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query600.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    command_encoder309.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    query007.destroy()
    
    query000.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query006.destroy()
    
    query004.destroy()
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    render_bundle_encoder301.popDebugGroup();
    
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
    
    const compute_pass_encoder3090 = command_encoder309.beginComputePass({ label: "compute_pass_encoder3090" });
    
    device30.pushErrorScope("internal");
    query302.destroy()
    compute_pass_encoder6000.popDebugGroup()
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query003.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    query600.destroy()
    command_encoder500.insertDebugMarker("mymarker");
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
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query007.destroy()
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const array4 = new Float32Array([0.0, 0.5, 1.0, -1.0, -1.0, 1.0, -0.75, 0.5, 0.25, -1.0, 0.75, 0.25, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 0.25, 1.0, -0.25, 1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, -0.25, -0.25, 1.0, 1.0, 0.75, 1.0, 0.0, -0.75, 0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 0.0, 0.0, -1.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, ]);
    
    
    query004.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    query300.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    query302.destroy()
    device60.pushErrorScope("internal");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
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
    compute_pass_encoder0030.popDebugGroup()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder6000.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    query007.destroy()
    query004.destroy()
    buffer004.destroy()
    query002.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query600.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query004.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query005.destroy()
    command_encoder603.pushDebugGroup("mygroupmarker")
    query001.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder602.pushDebugGroup("mygroupmarker")
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
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    query002.destroy()
    compute_pass_encoder0030.popDebugGroup()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    query008.destroy()
    query302.destroy()
    
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query300.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const command_buffer005 = command_encoder005.finish();
    
    command_encoder601.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer303.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    query301.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer304.destroy()
    
    
    compute_pass_encoder3090.pushDebugGroup("group_marker")
    device50.queue.submit([command_buffer501, ]);
    query003.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    buffer700.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    query001.destroy()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    query700.destroy()
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer005, ]);
    command_encoder602.popDebugGroup()
    compute_pass_encoder3090.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer602, ]);
    device30.queue.submit([command_buffer302, ]);
    const command_buffer004 = command_encoder004.finish();
}