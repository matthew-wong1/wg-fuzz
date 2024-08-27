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
    const array0 = new Float32Array([1.0, -0.75, -0.25, -1.0, 0.0, -0.5, -0.5, -0.75, -0.75, -0.25, 0.0, -0.5, 0.0, 0.75, -1.0, 0.0, -0.25, -1.0, 0.75, 0.0, -0.25, 1.0, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, -0.75, -0.5, -0.75, 1.0, -1.0, 0.25, 0.75, 0.5, 1.0, -1.0, -0.5, 0.5, 0.75, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.0, 0.75, 0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, 0.25, 0.5, 1.0, -0.5, 0.5, -1.0, -0.75, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.25, -0.5, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.destroy();
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_buffer100 = command_encoder100.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device10.destroy();
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    query300.destroy()
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array1 = new Float32Array([0.0, 0.25, 0.5, -0.25, 0.0, 0.5, -0.75, 0.75, 0.75, 0.5, 0.5, 0.75, -0.75, 0.0, -0.5, -0.25, 0.0, -1.0, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.5, -0.5, 0.0, 0.75, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -1.0, -0.75, -0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, 0.5, 1.0, -0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 0.0, 0.0, ]);
    buffer301.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.pushErrorScope("validation");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array2 = new Float32Array([1.0, -0.5, 1.0, -0.75, 0.5, -0.25, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, 1.0, 0.5, 0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 0.5, -0.75, 1.0, 0.0, 0.5, -0.75, -1.0, 0.25, -0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.5, -0.25, 0.0, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.25, 0.25, 0.0, 0.25, 1.0, 1.0, 0.75, 0.5, 1.0, -0.5, -0.25, 1.0, 0.5, -0.75, 0.0, -0.5, 1.0, 0.75, 0.5, -0.75, -0.25, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, -0.25, -0.5, -1.0, ]);
    const array3 = new Float32Array([0.75, 0.5, 0.5, 0.5, 0.25, 1.0, -1.0, -0.5, -0.75, 0.5, -1.0, 0.75, 0.5, 0.0, -0.25, 0.5, -0.25, -0.5, 0.5, -1.0, 0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 1.0, 0.0, 0.25, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, -1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.25, 0.5, 0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, -1.0, 1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 0.5, -0.75, 0.75, 0.75, -1.0, 0.25, -0.75, 0.25, 0.25, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.5, 1.0, 1.0, 0.75, -1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_buffer201 = command_encoder201.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer300.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    texture300.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer302.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder300.clearBuffer(buffer300);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer200, ]);
    
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder3000.popDebugGroup()
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    texture301.destroy();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder401.insertDebugMarker("mymarker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder403.pushDebugGroup("mygroupmarker")
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
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
    device20.pushErrorScope("internal");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    
    texture700.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.pushErrorScope("internal");
    compute_pass_encoder3010.popDebugGroup()
    
    query700.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    query301.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder202.insertDebugMarker("mymarker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query401.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_buffer404 = command_encoder404.finish();
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder202.insertDebugMarker("mymarker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    render_bundle_encoder200.popDebugGroup();
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer200,
        0,
        400
    );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const array4 = new Float32Array([-1.0, -0.5, 0.25, 0.0, 0.75, 0.5, -1.0, 0.5, 0.75, -1.0, -0.75, 0.5, 1.0, 0.25, 1.0, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 0.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.25, -0.25, 0.0, -0.75, 0.25, 0.25, -0.5, 0.75, 0.25, -0.75, -0.5, -1.0, 0.0, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.25, 0.5, 0.5, -0.5, 0.25, 0.0, -0.75, -0.5, 0.5, 1.0, 1.0, -0.25, -0.25, 0.5, -1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.0, -0.75, -0.75, 0.25, -0.75, 0.25, 0.0, -0.25, -0.5, ]);
    device40.queue.submit([command_buffer404, ]);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    const array5 = new Float32Array([-1.0, -0.25, 0.5, -0.25, 0.25, -0.75, 0.75, 0.25, -0.25, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -1.0, 0.5, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, -1.0, -0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.75, 0.25, 0.5, -1.0, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.25, 0.25, 0.0, ]);
    const command_buffer400 = command_encoder400.finish();
    
    
    
    device50.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    query402.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    
    
    
    
    buffer200.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    render_bundle_encoder302.popDebugGroup();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder402.popDebugGroup();
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder202.insertDebugMarker("mymarker");
    const command_buffer405 = command_encoder405.finish();
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    device30.queue.submit([]);
    texture700.destroy();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    
    buffer200.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    command_encoder301.copyTextureToTexture(
        {
            texture: texture303
        },
        {
            texture: texture305
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query301.destroy()
    query402.destroy()
    query200.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    texture303.destroy();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query702.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    query305.destroy()
    query305.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder402.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder3010.insertDebugMarker("marker");
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    command_encoder402.insertDebugMarker("mymarker");
    texture100.destroy();
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query701
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device30.queue.writeTexture({ texture: texture305 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder302.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    query700.destroy()
    query304.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer201.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device20.queue.submit([command_buffer201, ]);
    render_bundle_encoder700.setPipeline(render_pipeline700);
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder302.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder7000.setStencilReference(1);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder403.popDebugGroup()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query305.destroy()
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder7000.setPipeline(render_pipeline700);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer300,
        0
    )
    query304.destroy()
    command_encoder303.resolveQuerySet(
        query305,
        0,
        32,
        buffer300,
        0
    )
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const command_buffer702 = command_encoder702.finish();
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    texture600.destroy();
    command_encoder402.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    
    const array6 = new Float32Array([-0.25, -0.75, 0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.25, 0.0, 1.0, -0.75, 0.0, 0.75, 1.0, -1.0, -0.25, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, -1.0, -1.0, 0.0, -0.25, -0.75, 0.0, 1.0, -0.75, 0.75, -0.75, 0.0, 0.25, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, 0.75, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, -0.75, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 0.0, 0.25, 0.75, -1.0, -0.75, -0.25, 0.5, 0.0, -0.25, ]);
    render_bundle_encoder300.popDebugGroup();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder702.insertDebugMarker("marker");
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder302.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("validation");
    
    render_pass_encoder7000.setStencilReference(1);
    device40.queue.submit([command_buffer400, ]);
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query702
    });
    render_bundle_encoder701.popDebugGroup();
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder7010.insertDebugMarker("marker")
    texture701.destroy();
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query401.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    buffer202.destroy()
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    query304.destroy()
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    buffer700.destroy()
    
    render_pass_encoder3011.setPipeline(render_pipeline300);
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query304
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder3031.executeBundles([])
    compute_pass_encoder4010.insertDebugMarker("marker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder7030.executeBundles([render_bundle_encoder700, ])
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    render_bundle_encoder701.popDebugGroup();
    
    render_bundle_encoder702.setPipeline(render_pipeline700);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group300);
    render_pass_encoder3031.setPipeline(render_pipeline300);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer703 = command_encoder703.finish();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const command_buffer406 = command_encoder406.finish();
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    command_encoder302.popDebugGroup()
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group400);
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group700);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7030.setBindGroup(0, bind_group701);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group301);
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer403, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer403, 0);
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3011.setVertexBuffer(0, buffer301);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder3011.draw(3);
    compute_pass_encoder4030.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer406, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer407, 0);
    device80.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3031.setVertexBuffer(0, buffer300);
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder3031.draw(3);
    const command_buffer403 = command_encoder403.finish();
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder4020.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3030.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    command_encoder402.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer408, 0);
    device70.queue.submit([command_buffer703, ]);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([]);
    render_pass_encoder3011.end();
    render_pass_encoder3030.setVertexBuffer(0, buffer301);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.end();
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder4010.end();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group403);
    render_pass_encoder3031.end();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    compute_pass_encoder4030.end();
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    command_encoder401.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder4030.end();
    render_pass_encoder3030.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer402, ]);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3031.drawIndirect(buffer301, 0);
    render_pass_encoder3020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.end();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3011.setIndexBuffer(buffer3012, "uint16");
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    const command_buffer701 = command_encoder701.finish();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    render_pass_encoder7000.setVertexBuffer(0, buffer703);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4015, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.setIndexBuffer(buffer704, "uint16");
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder7000.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4016, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder4020.end();
    compute_pass_encoder4020.end();
    compute_pass_encoder4020.end();
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.end();
    render_pass_encoder7030.setVertexBuffer(0, buffer701);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder7000.drawIndexedIndirect(buffer703, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3020.draw(3);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7000.end();
    const command_buffer700 = command_encoder700.finish();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3020.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.draw(3);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3011.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device30.queue.submit([command_buffer302, ]);
    device80.queue.submit([]);
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer703, ]);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4017, 0);
    render_pass_encoder3011.drawIndirect(buffer302, 0);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder7000.end();
    render_pass_encoder3011.draw(3);
    compute_pass_encoder4030.end();
    render_pass_encoder7000.draw(3);
    render_pass_encoder7030.end();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3010.draw(3);
    device20.queue.submit([command_buffer203, ]);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    device80.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4020.end();
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer702, ]);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4018, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4018, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4019, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer304, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder7000.drawIndexed(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3030.draw(3);
    device40.queue.submit([]);
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    device20.queue.submit([]);
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder7030.setIndexBuffer(buffer701, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder7030.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer301, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7030.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder7010.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7010.popDebugGroup()
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group405);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.end();
    device40.queue.submit([command_buffer405, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder7030.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    device00.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group406);
    render_pass_encoder3011.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3030.end();
    render_pass_encoder7030.drawIndexed(3);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder7030.drawIndexed(3);
    device70.queue.submit([command_buffer702, ]);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.draw(3);
    device80.queue.submit([]);
    compute_pass_encoder4010.end();
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer702, ]);
    device60.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3031.drawIndirect(buffer301, 0);
    render_pass_encoder3020.popDebugGroup();
    device60.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder4010.end();
    render_pass_encoder7000.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    device80.queue.submit([]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3020.end();
    render_pass_encoder7030.popDebugGroup();
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group408);
    device80.queue.submit([]);
    device10.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder4020.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.end();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    render_pass_encoder3030.draw(3);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7000.drawIndirect(buffer703, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder7030.setIndexBuffer(buffer701, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder7030.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder7030.drawIndexedIndirect(buffer704, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder7000.setIndexBuffer(buffer704, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7030.drawIndexedIndirect(buffer704, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder7000.setIndexBuffer(buffer704, "uint16");
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder7000.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder7000.end();
    render_pass_encoder7030.end();
    render_pass_encoder3031.endOcclusionQuery()
    render_pass_encoder3010.setIndexBuffer(buffer308, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3030.end();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    render_pass_encoder7000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4030.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder7000.draw(3);
    render_pass_encoder7030.end();
    device40.queue.submit([command_buffer401, ]);
    device70.queue.submit([command_buffer700, ]);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer203, ]);
    device60.queue.submit([]);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder7030.draw(3);
    device70.queue.submit([]);
    device70.queue.submit([command_buffer702, ]);
    device70.queue.submit([command_buffer700, ]);
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4011);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3010, 0);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4010.popDebugGroup()
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4012);
    render_pass_encoder7000.drawIndirect(buffer703, 0);
    compute_pass_encoder7010.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4036, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4036, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder3010.setIndexBuffer(buffer3011, "uint16");
    device40.queue.submit([command_buffer401, command_buffer403, command_buffer404, command_buffer406, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4038,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    render_pass_encoder3011.drawIndexed(3);
    device60.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4039, 0);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4040, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.end();
    device40.queue.submit([command_buffer406, ]);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3030.popDebugGroup();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4041, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4041, 0);
    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4043,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder7030.drawIndirect(buffer700, 0);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder7000.end();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer307, 0);
    device20.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder3011.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4015);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4046, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4046, 0);
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4016);
    render_pass_encoder3011.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3031.end();
    device70.queue.submit([command_buffer703, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3011.drawIndirect(buffer300, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3011.end();
    device80.queue.submit([]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder7000.drawIndirect(buffer703, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    device40.queue.submit([command_buffer406, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4049, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4049, 0);
    render_pass_encoder3031.draw(3);
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    device00.queue.submit([]);
    render_pass_encoder7030.end();
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    device30.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3030.end();
    device50.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3020.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder7000.end();
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7030.end();
    device80.queue.submit([]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3031.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device80.queue.submit([]);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3010.drawIndexed(3);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4030.end();
    device20.queue.submit([]);
    render_pass_encoder3011.drawIndexedIndirect(buffer305, 0);
    device80.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder7030.popDebugGroup();
    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4051,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4017);
    compute_pass_encoder4010.end();
    device80.queue.submit([]);
    render_pass_encoder3011.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder7030.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    render_pass_encoder7030.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([]);
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder7030.end();
    device60.queue.submit([]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4052, 0);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder7030.popDebugGroup();
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3031.draw(3);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device80.queue.submit([]);
    render_pass_encoder3020.end();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3020.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer303, 0);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder7030.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    device80.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4018);
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4019);
    render_pass_encoder7000.setIndexBuffer(buffer704, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4030.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7000.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3030.end();
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.draw(3);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4057, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4057, 0);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.end();
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7030.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder4030.popDebugGroup()
    device40.queue.submit([command_buffer406, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4010.end();
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder7030.drawIndirect(buffer703, 0);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3011.drawIndexed(3);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer702, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3030.endOcclusionQuery()
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder3031.draw(3);
    device40.queue.submit([command_buffer405, ]);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder3010.draw(3);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder3031.drawIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer303, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder7030.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3020.end();
    compute_pass_encoder4020.popDebugGroup()
    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4059,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4020);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer309, 0);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3031.draw(3);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4020.end();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4010.end();
    render_pass_encoder7000.end();
    compute_pass_encoder4010.end();
    render_pass_encoder3010.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([]);
    render_pass_encoder3031.popDebugGroup();
    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4061,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4021);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4062, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4062, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4063, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4063, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3011.drawIndirect(buffer303, 0);
    render_pass_encoder7000.drawIndexed(3);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4064, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4064, 0);
    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4066,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4022);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer303, 0);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3020.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3011.draw(3);
    device70.queue.submit([]);
    render_pass_encoder3031.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder3011.drawIndirect(buffer3011, 0);
    render_pass_encoder7000.drawIndexedIndirect(buffer700, 0);
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder3010.end();
    device60.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.drawIndexed(3);
    device40.queue.submit([command_buffer401, command_buffer405, ]);
    render_pass_encoder7000.draw(3);
    device40.queue.submit([command_buffer405, ]);
    device20.queue.submit([command_buffer202, ]);
    device70.queue.submit([command_buffer703, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder7030.end();
    render_pass_encoder7030.setIndexBuffer(buffer704, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.end();
    device20.queue.submit([]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    device80.queue.submit([]);
    device70.queue.submit([command_buffer701, command_buffer703, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder4020.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder7030.end();
    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4068,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4023);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder4010.end();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4069, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4069, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder3030.end();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3020.end();
    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4071,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4024);
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer702, ]);
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4073,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4025);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder7000.end();
    compute_pass_encoder3010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3030.setIndexBuffer(buffer304, "uint16");
    compute_pass_encoder4020.end();
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder3010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4020.end();
    render_pass_encoder3030.setIndexBuffer(buffer301, "uint16");
    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4075,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4026);
    render_pass_encoder7030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([]);
    device80.queue.submit([]);
    render_pass_encoder7030.end();
    compute_pass_encoder4010.end();
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder7030.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3031.endOcclusionQuery()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4076, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4076, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3010.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder7000.end();
    render_pass_encoder3030.drawIndexed(3);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3020.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4077, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4077, 0);
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    device60.queue.submit([]);
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    device80.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4078, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4078, 0);
    device30.queue.submit([]);
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer406, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4079, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4079, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.draw(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3010.end();
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3031.drawIndexedIndirect(buffer300, 0);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4081,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4027);
    render_pass_encoder3031.drawIndexed(3);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3020.popDebugGroup();
    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4083,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4028);
    device80.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer305, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder7000.end();
    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4085,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4029);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3031.end();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4010.end();
    render_pass_encoder3030.end();
    render_pass_encoder3010.end();
    compute_pass_encoder4020.end();
    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4087,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4030);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder7030.end();
    render_pass_encoder7000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder7030.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4088, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4088, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4030.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer405, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3030.end();
    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4090,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4031);
    render_pass_encoder3030.setIndexBuffer(buffer301, "uint16");
    compute_pass_encoder4030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder7000.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder4020.end();
    render_pass_encoder3030.draw(3);
    compute_pass_encoder4030.end();
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder3020.end();
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4091, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4091, 0);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.drawIndexed(3);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder4010.end();
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3030.popDebugGroup();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4092, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4092, 0);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3011.end();
    device70.queue.submit([]);
    render_pass_encoder7030.drawIndirect(buffer701, 0);
    render_pass_encoder3031.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3011.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder7030.end();
    device20.queue.submit([command_buffer202, ]);
    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4094 = device40.createBuffer({
        label: "buffer4094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4094,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4032);
    device70.queue.submit([command_buffer700, ]);
    const buffer4095 = device40.createBuffer({
        label: "buffer4095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4096 = device40.createBuffer({
        label: "buffer4096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4033 = device40.createBindGroup({
        label: "bind_group4033",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4096,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4033);
    render_pass_encoder7030.end();
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer403, command_buffer405, command_buffer406, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder7000.draw(3);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7030.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3011.end();
    render_pass_encoder7000.drawIndexed(3);
    device40.queue.submit([command_buffer400, command_buffer405, ]);
    compute_pass_encoder4030.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4097 = device40.createBuffer({
        label: "buffer4097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4097, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4097, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    device40.queue.submit([command_buffer403, ]);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder4020.end();
    const buffer4098 = device40.createBuffer({
        label: "buffer4098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4099 = device40.createBuffer({
        label: "buffer4099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4034 = device40.createBindGroup({
        label: "bind_group4034",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4099,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4034);
    device40.queue.submit([command_buffer403, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder7010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder3010.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder7030.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder3030.end();
    const buffer40100 = device40.createBuffer({
        label: "buffer40100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40101 = device40.createBuffer({
        label: "buffer40101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4035 = device40.createBindGroup({
        label: "bind_group4035",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40101,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4035);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7030.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device70.queue.submit([command_buffer703, ]);
    const buffer40102 = device40.createBuffer({
        label: "buffer40102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40103 = device40.createBuffer({
        label: "buffer40103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4036 = device40.createBindGroup({
        label: "bind_group4036",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40103,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4036);
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3010.draw(3);
    device60.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([command_buffer703, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40104 = device40.createBuffer({
        label: "buffer40104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40104, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40104, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.draw(3);
    device50.queue.submit([]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    const buffer40105 = device40.createBuffer({
        label: "buffer40105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40106 = device40.createBuffer({
        label: "buffer40106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4037 = device40.createBindGroup({
        label: "bind_group4037",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40106,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4037);
    render_pass_encoder7000.drawIndexed(3);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7010.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40107 = device40.createBuffer({
        label: "buffer40107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40107, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40107, 0);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.end();
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4020.end();
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3011, "uint16");
    const buffer40108 = device40.createBuffer({
        label: "buffer40108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40109 = device40.createBuffer({
        label: "buffer40109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4038 = device40.createBindGroup({
        label: "bind_group4038",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40109,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4038);
    render_pass_encoder3031.drawIndirect(buffer308, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    device70.queue.submit([command_buffer703, ]);
    const buffer40110 = device40.createBuffer({
        label: "buffer40110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40111 = device40.createBuffer({
        label: "buffer40111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4039 = device40.createBindGroup({
        label: "bind_group4039",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40111,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4039);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer203, ]);
    device60.queue.submit([]);
    render_pass_encoder7030.end();
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3011.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3031.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3011.end();
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40112 = device40.createBuffer({
        label: "buffer40112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40112, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40112, 0);
    render_pass_encoder3011.end();
    device40.queue.submit([command_buffer406, ]);
    const buffer40113 = device40.createBuffer({
        label: "buffer40113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40114 = device40.createBuffer({
        label: "buffer40114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4040 = device40.createBindGroup({
        label: "bind_group4040",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40114,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4040);
    render_pass_encoder3030.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    device40.queue.submit([command_buffer405, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.drawIndirect(buffer307, 0);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([]);
    const buffer40115 = device40.createBuffer({
        label: "buffer40115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40116 = device40.createBuffer({
        label: "buffer40116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4041 = device40.createBindGroup({
        label: "bind_group4041",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40116,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4041);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder4030.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder7000.popDebugGroup();
    const buffer40117 = device40.createBuffer({
        label: "buffer40117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40118 = device40.createBuffer({
        label: "buffer40118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4042 = device40.createBindGroup({
        label: "bind_group4042",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40118,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4042);
    device40.queue.submit([command_buffer404, command_buffer405, ]);
    render_pass_encoder3011.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7030.drawIndirect(buffer700, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder3031.drawIndexedIndirect(buffer309, 0);
    compute_pass_encoder4010.end();
    compute_pass_encoder4030.end();
    render_pass_encoder3031.setIndexBuffer(buffer3012, "uint16");
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder7000.end();
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3031.draw(3);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder7030.drawIndirect(buffer704, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    const buffer40119 = device40.createBuffer({
        label: "buffer40119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40120 = device40.createBuffer({
        label: "buffer40120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4043 = device40.createBindGroup({
        label: "bind_group4043",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40120,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4043);
    compute_pass_encoder4010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder7030.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder3011.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device80.queue.submit([]);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder7000.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder7030.drawIndirect(buffer703, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer406, ]);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.drawIndirect(buffer307, 0);
    render_pass_encoder7000.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder7000.drawIndirect(buffer700, 0);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    device20.queue.submit([]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3011, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder3031.end();
    device80.queue.submit([]);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer305, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder7000.drawIndexedIndirect(buffer700, 0);
    compute_pass_encoder2020.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder7030.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3030.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3031.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder7030.setIndexBuffer(buffer703, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40121 = device40.createBuffer({
        label: "buffer40121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40121, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40121, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer309, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3010.end();
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40122 = device40.createBuffer({
        label: "buffer40122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40122, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40122, 0);
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3031.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3011.end();
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer703, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3030.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder7030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3020.draw(3);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    const buffer40123 = device40.createBuffer({
        label: "buffer40123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40124 = device40.createBuffer({
        label: "buffer40124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4044 = device40.createBindGroup({
        label: "bind_group4044",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40124,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4044);
    render_pass_encoder3020.end();
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3020.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7030.draw(3);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder4020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder7000.end();
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device80.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder7030.draw(3);
    compute_pass_encoder4020.end();
    render_pass_encoder7030.drawIndirect(buffer702, 0);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder7030.drawIndexedIndirect(buffer703, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3030.end();
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    device80.queue.submit([]);
    const buffer40125 = device40.createBuffer({
        label: "buffer40125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40126 = device40.createBuffer({
        label: "buffer40126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4045 = device40.createBindGroup({
        label: "bind_group4045",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40126,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4045);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40127 = device40.createBuffer({
        label: "buffer40127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40127, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40127, 0);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device10.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    const buffer40128 = device40.createBuffer({
        label: "buffer40128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40129 = device40.createBuffer({
        label: "buffer40129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4046 = device40.createBindGroup({
        label: "bind_group4046",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40129,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4046);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndexed(3);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer302, 0);
    device40.queue.submit([]);
    const buffer40130 = device40.createBuffer({
        label: "buffer40130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40131 = device40.createBuffer({
        label: "buffer40131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4047 = device40.createBindGroup({
        label: "bind_group4047",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40131,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4047);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder7010.popDebugGroup()
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3031.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3030.endOcclusionQuery()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40132 = device40.createBuffer({
        label: "buffer40132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40132, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40132, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder7000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer403, ]);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3011.setIndexBuffer(buffer307, "uint16");
    device60.queue.submit([]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder7000.end();
    render_pass_encoder3030.end();
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3030.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder7030.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    const buffer40133 = device40.createBuffer({
        label: "buffer40133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40134 = device40.createBuffer({
        label: "buffer40134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4048 = device40.createBindGroup({
        label: "bind_group4048",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40134,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4048);
    render_pass_encoder3031.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder7000.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3010.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7030.drawIndirect(buffer701, 0);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3020.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3031.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40135 = device40.createBuffer({
        label: "buffer40135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40135, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40135, 0);
    render_pass_encoder7030.end();
    device40.queue.submit([command_buffer401, command_buffer406, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder3031.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3030.drawIndirect(buffer3012, 0);
    render_pass_encoder7000.draw(3);
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder4020.popDebugGroup()
    const buffer40136 = device40.createBuffer({
        label: "buffer40136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40137 = device40.createBuffer({
        label: "buffer40137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4049 = device40.createBindGroup({
        label: "bind_group4049",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40137,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4049);
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    compute_pass_encoder4030.end();
    render_pass_encoder3031.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer305, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder3020.drawIndexed(3);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.drawIndirect(buffer309, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder7000.drawIndirect(buffer701, 0);
    render_pass_encoder7000.drawIndirect(buffer701, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    const buffer40138 = device40.createBuffer({
        label: "buffer40138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40139 = device40.createBuffer({
        label: "buffer40139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4050 = device40.createBindGroup({
        label: "bind_group4050",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40139,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4050);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3031.end();
    device30.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    const buffer40140 = device40.createBuffer({
        label: "buffer40140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40141 = device40.createBuffer({
        label: "buffer40141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4051 = device40.createBindGroup({
        label: "bind_group4051",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40141,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4051);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer403, ]);
    render_pass_encoder3011.popDebugGroup();
    device70.queue.submit([command_buffer703, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.draw(3);
    const buffer40142 = device40.createBuffer({
        label: "buffer40142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40143 = device40.createBuffer({
        label: "buffer40143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4052 = device40.createBindGroup({
        label: "bind_group4052",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40143,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4052);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7000.draw(3);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer405, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder7030.drawIndexed(3);
    device80.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder7030.setIndexBuffer(buffer701, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40144 = device40.createBuffer({
        label: "buffer40144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40144, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40144, 0);
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([]);
    const buffer40145 = device40.createBuffer({
        label: "buffer40145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40146 = device40.createBuffer({
        label: "buffer40146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4053 = device40.createBindGroup({
        label: "bind_group4053",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40146,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4053);
    const buffer40147 = device40.createBuffer({
        label: "buffer40147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40148 = device40.createBuffer({
        label: "buffer40148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4054 = device40.createBindGroup({
        label: "bind_group4054",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40148,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4054);
    render_pass_encoder7000.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    device80.queue.submit([]);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40149 = device40.createBuffer({
        label: "buffer40149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40149, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40149, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3020.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer401, command_buffer406, ]);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer301, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40150 = device40.createBuffer({
        label: "buffer40150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40150, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40150, 0);
    device80.queue.submit([]);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.end();
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder7030.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3020.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3020.end();
    render_pass_encoder7000.draw(3);
    render_pass_encoder3030.end();
    compute_pass_encoder4020.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3020.end();
    device70.queue.submit([command_buffer703, ]);
    device80.queue.submit([]);
    render_pass_encoder7000.drawIndirect(buffer702, 0);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40151 = device40.createBuffer({
        label: "buffer40151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40151, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40151, 0);
    render_pass_encoder3031.drawIndirect(buffer3010, 0);
    render_pass_encoder3011.popDebugGroup();
    device70.queue.submit([command_buffer702, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder7000.setIndexBuffer(buffer703, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer305, 0);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.drawIndexedIndirect(buffer305, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3011.drawIndexedIndirect(buffer302, 0);
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.end();
    const buffer40152 = device40.createBuffer({
        label: "buffer40152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40153 = device40.createBuffer({
        label: "buffer40153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4055 = device40.createBindGroup({
        label: "bind_group4055",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40153,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4055);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4020.end();
    device30.queue.submit([]);
    render_pass_encoder3031.drawIndexedIndirect(buffer308, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder7030.setIndexBuffer(buffer703, "uint16");
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder7030.drawIndexed(3);
    render_pass_encoder7000.end();
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.popDebugGroup();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40154 = device40.createBuffer({
        label: "buffer40154",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40154, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40154, 0);
    device30.queue.submit([]);
    render_pass_encoder3020.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    const buffer40155 = device40.createBuffer({
        label: "buffer40155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40156 = device40.createBuffer({
        label: "buffer40156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4056 = device40.createBindGroup({
        label: "bind_group4056",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40156,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4056);
    render_pass_encoder7000.end();
    render_pass_encoder7030.drawIndirect(buffer700, 0);
    compute_pass_encoder2030.popDebugGroup()
    device80.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    const buffer40157 = device40.createBuffer({
        label: "buffer40157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40158 = device40.createBuffer({
        label: "buffer40158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4057 = device40.createBindGroup({
        label: "bind_group4057",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40158,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4057);
    render_pass_encoder3031.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3010.end();
    device70.queue.submit([command_buffer701, command_buffer703, ]);
    const buffer40159 = device40.createBuffer({
        label: "buffer40159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40160 = device40.createBuffer({
        label: "buffer40160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4058 = device40.createBindGroup({
        label: "bind_group4058",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40160,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4058);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3031.end();
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    device70.queue.submit([command_buffer702, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3010.end();
    compute_pass_encoder3010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3011.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3011, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3011.draw(3);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder7000.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40161 = device40.createBuffer({
        label: "buffer40161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40161, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40161, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3031.end();
    render_pass_encoder3011.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3010.end();
    device20.queue.submit([]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40162 = device40.createBuffer({
        label: "buffer40162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40162, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40162, 0);
    compute_pass_encoder4020.end();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer309, 0);
    const buffer40163 = device40.createBuffer({
        label: "buffer40163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40164 = device40.createBuffer({
        label: "buffer40164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4059 = device40.createBindGroup({
        label: "bind_group4059",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40164,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4059);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer40165 = device40.createBuffer({
        label: "buffer40165",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40165, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer40165, 0);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder7000.end();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3031.end();
    const buffer40166 = device40.createBuffer({
        label: "buffer40166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40167 = device40.createBuffer({
        label: "buffer40167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4060 = device40.createBindGroup({
        label: "bind_group4060",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40167,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4060);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer302, 0);
    const buffer40168 = device40.createBuffer({
        label: "buffer40168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40169 = device40.createBuffer({
        label: "buffer40169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4061 = device40.createBindGroup({
        label: "bind_group4061",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40169,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4061);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7000.end();
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3010, 0);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer403, ]);
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3020.drawIndirect(buffer3010, 0);
    render_pass_encoder7030.drawIndexedIndirect(buffer703, 0);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3020.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder7030.drawIndexedIndirect(buffer700, 0);
    compute_pass_encoder4020.popDebugGroup()
    const buffer40170 = device40.createBuffer({
        label: "buffer40170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40171 = device40.createBuffer({
        label: "buffer40171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4062 = device40.createBindGroup({
        label: "bind_group4062",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40171,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4062);
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder7030.popDebugGroup();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40172 = device40.createBuffer({
        label: "buffer40172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40172, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40172, 0);
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.draw(3);
    device70.queue.submit([]);
    render_pass_encoder3011.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    const buffer40173 = device40.createBuffer({
        label: "buffer40173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40174 = device40.createBuffer({
        label: "buffer40174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4063 = device40.createBindGroup({
        label: "bind_group4063",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40174,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4063);
    device60.queue.submit([]);
    render_pass_encoder3020.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40175 = device40.createBuffer({
        label: "buffer40175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40175, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40175, 0);
    render_pass_encoder3011.end();
    render_pass_encoder7030.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder7030.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder7030.setIndexBuffer(buffer700, "uint16");
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder7030.drawIndexed(3);
    device40.queue.submit([command_buffer405, ]);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3031.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder7000.setIndexBuffer(buffer700, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device80.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7000.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer703, ]);
    device40.queue.submit([command_buffer402, ]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder7030.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3010.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder4020.end();
    const buffer40176 = device40.createBuffer({
        label: "buffer40176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40177 = device40.createBuffer({
        label: "buffer40177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4064 = device40.createBindGroup({
        label: "bind_group4064",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40177,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4064);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer301, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder7000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3011.end();
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2030.popDebugGroup()
}