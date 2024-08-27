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
    
    const array0 = new Float32Array([0.75, 0.75, -0.25, 0.5, 0.5, 0.25, 1.0, 1.0, -0.75, 0.0, 0.5, 0.25, 1.0, 0.75, -0.75, -0.25, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 0.25, 1.0, 0.0, 0.25, 1.0, -0.75, 0.75, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, 0.75, 0.75, -1.0, 0.25, -0.5, -0.75, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, -1.0, -0.5, -1.0, -1.0, 1.0, 0.25, -0.75, 0.75, 0.75, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, -1.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.5, -1.0, 0.5, 0.5, 0.5, 0.25, ]);
    const array1 = new Float32Array([1.0, 0.25, 1.0, -1.0, 0.0, 0.75, -1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 0.25, -1.0, 0.0, 0.75, 0.0, -0.75, -1.0, 0.5, -0.25, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, -0.25, 1.0, -1.0, -1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 1.0, 0.25, 0.0, 0.25, 0.0, -0.75, 1.0, -0.5, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, -1.0, 0.25, -0.25, -0.5, 0.0, -0.75, 0.25, 1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, 0.5, -0.5, 1.0, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.5, 0.5, ]);
    
    
    
    
    const array2 = new Float32Array([0.0, -0.25, -0.75, -0.75, -0.75, -0.5, 0.5, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, -0.25, 0.25, 0.25, 0.25, -1.0, 0.75, 1.0, -1.0, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 0.5, 0.75, -0.75, 1.0, -1.0, -0.25, -0.25, 0.5, -0.25, -0.75, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.0, 1.0, 0.75, -0.75, 0.0, 1.0, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, 0.75, -0.25, -0.25, 0.25, 0.25, 0.5, 1.0, -0.5, -0.75, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 0.5, ]);
    
    const array3 = new Float32Array([-0.25, -0.75, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, 0.0, 0.75, 0.0, 1.0, 1.0, 1.0, 0.0, 0.5, -0.25, -0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -0.5, 0.0, -0.5, 0.0, 1.0, -0.5, 0.75, 0.75, -0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 0.75, -0.75, -0.5, 1.0, 0.75, 0.0, 0.75, 1.0, 0.75, 0.25, 0.0, 0.5, 0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.25, 0.5, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.5, -0.5, -1.0, 0.5, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array4 = new Float32Array([-1.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.25, -0.25, -1.0, 0.0, -1.0, 1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.25, 0.5, 0.5, -0.25, 0.0, -1.0, 1.0, -1.0, 0.0, 1.0, 0.5, -0.25, 0.75, 1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, -0.25, 0.5, -0.75, -0.25, 0.75, 1.0, 1.0, -0.5, 0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 0.0, -1.0, 0.0, -0.25, -0.5, 0.75, -0.25, -0.25, 1.0, -0.5, 0.5, 0.0, 0.75, 0.5, -0.75, -0.5, -0.5, 0.5, 1.0, 0.0, -0.75, -0.5, 0.5, -1.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.5, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.popDebugGroup();
    const array5 = new Float32Array([0.5, 0.75, -1.0, -0.75, -0.75, 0.0, 0.0, 0.75, -1.0, 1.0, -0.5, 0.75, -1.0, 0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.0, 0.0, 0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.0, -0.5, -0.75, -0.5, 0.5, 0.5, 0.5, -1.0, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.25, 0.25, 0.0, 1.0, -1.0, 1.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.75, -0.5, 1.0, -0.25, 0.0, 0.5, -0.5, -0.75, -1.0, 0.5, 1.0, 0.5, -1.0, 0.0, 0.5, 0.75, -0.5, 1.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.25, -0.25, 1.0, 1.0, 0.25, -0.75, 0.25, 0.0, ]);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.pushErrorScope("out-of-memory");
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
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
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder102.popDebugGroup();
    
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.popDebugGroup();
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    
    device20.destroy();
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    render_bundle_encoder100.popDebugGroup();
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
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
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.submit([]);
    device30.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device00.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
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
    
    device00.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    
    
    
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("validation");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
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
    
    
    
    
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    
    
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const array6 = new Float32Array([0.75, 0.25, 0.5, -0.5, -0.25, 1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 0.75, 0.5, -1.0, 1.0, 0.0, -0.25, -0.75, -0.25, 0.5, -0.75, -1.0, 0.25, 0.75, 0.0, 0.0, 0.25, -0.75, 0.5, 0.75, 1.0, -1.0, 0.25, 0.0, 1.0, 1.0, -0.5, 1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, 0.25, -1.0, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.5, -1.0, 0.75, -0.5, 0.5, -0.5, -0.5, 0.25, -0.5, 0.75, 1.0, -0.75, -0.5, 0.5, 1.0, 0.0, -0.5, ]);
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device60.pushErrorScope("out-of-memory");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    render_bundle_encoder102.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const array7 = new Float32Array([-0.5, -0.5, 0.0, -1.0, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 0.25, -0.75, 0.25, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.0, 0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 0.5, -0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 0.25, -0.75, 0.25, -1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, -0.25, -0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, -0.5, -1.0, -0.5, -1.0, 0.25, -0.5, 0.5, 0.75, 1.0, 0.25, 0.5, -0.25, -0.25, 0.25, 1.0, -0.25, -0.25, ]);
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const array8 = new Float32Array([0.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, -0.25, -0.75, 1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 1.0, 0.0, -1.0, -1.0, -0.75, 0.5, -1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, -0.5, 0.5, -0.75, -1.0, -0.75, 1.0, -1.0, 0.0, -0.25, 0.75, -0.5, -0.25, 0.75, -1.0, -1.0, 0.25, -0.75, 0.75, 0.25, -0.5, -0.25, -0.75, 0.0, 0.0, -0.5, 0.5, 1.0, -0.75, -0.5, -0.75, -0.25, 1.0, 0.0, -0.5, 0.0, -0.5, -0.25, -0.25, -1.0, 0.0, 0.5, 1.0, -0.5, -0.5, -1.0, -0.25, -1.0, -1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, 0.0, -0.25, -1.0, ]);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    device70.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture105 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    
    
    
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.popDebugGroup();
    device50.destroy();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device10.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    
    
    device60.queue.writeBuffer(buffer603, 0, array6, 0, array6.length);
    
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const array9 = new Float32Array([-0.75, 1.0, -0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, 1.0, 0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.0, 1.0, 0.25, 0.0, -1.0, -0.5, 0.75, -0.75, -0.25, 0.25, 0.0, 0.5, -0.75, -0.75, 0.0, -0.5, 0.75, 0.25, 0.75, -0.5, 0.0, -0.75, 0.25, -1.0, -0.75, -0.25, -0.75, 0.25, -0.75, -0.25, -0.25, 1.0, 0.75, -0.25, -0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 0.25, -1.0, 1.0, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 0.0, -0.25, 1.0, 0.0, -0.5, 0.5, 0.5, -0.5, 0.25, -0.25, -0.75, 0.25, -0.75, 0.0, -1.0, -0.5, -0.5, 0.25, -0.5, ]);
    
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    const array10 = new Float32Array([0.25, -1.0, -0.25, 0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, -0.25, -0.75, 0.5, 1.0, 0.0, -0.5, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, -0.75, -0.25, 1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.25, -0.75, 0.5, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, 0.5, -0.25, 0.25, 0.25, 0.0, 1.0, -1.0, 0.25, 0.5, -0.5, 0.25, 1.0, 0.5, -0.25, -0.75, -1.0, -0.25, -0.75, 0.0, 0.5, 0.75, -0.75, 1.0, 0.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -0.75, 0.0, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, -0.5, -0.5, -0.25, -0.5, 0.25, 0.25, -0.75, 0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 1.0, 0.75, -1.0, ]);
    device60.queue.writeBuffer(buffer603, 0, array9, 0, array9.length);
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer603, 0, array8, 0, array8.length);
    
    
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}