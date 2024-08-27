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
    const array0 = new Float32Array([1.0, -0.5, -0.25, 0.75, -0.5, -0.75, -0.5, -0.75, -0.5, 0.0, 0.75, -0.75, 0.25, 0.5, 0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -1.0, 0.75, -0.25, 0.75, -0.75, -0.25, 0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 0.25, -1.0, -0.75, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.5, -0.25, 1.0, -1.0, -0.75, 0.75, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.75, 0.0, 0.25, 0.75, 1.0, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array1 = new Float32Array([-1.0, 0.75, 0.0, -1.0, -1.0, 0.5, 0.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 1.0, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 1.0, 0.25, 1.0, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, 0.5, -0.5, 0.25, 1.0, 0.75, -0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 0.25, -0.25, -1.0, 0.75, -0.25, 1.0, 0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.25, -0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 0.75, -0.75, 0.0, 0.0, -0.25, -0.75, -0.5, 0.25, 1.0, 0.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array2 = new Float32Array([-1.0, -1.0, -0.75, 1.0, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, -0.25, -0.5, -0.75, -0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 1.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, -1.0, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.5, -1.0, -0.75, 0.0, -0.5, -0.75, 0.75, 1.0, 0.0, 0.5, -0.5, 0.25, 0.5, -0.25, -1.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 1.0, 0.0, -0.25, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -1.0, 0.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.75, 0.5, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    texture000.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device00.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture200.destroy();
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.clearBuffer(buffer100);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer100.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const command_buffer100 = command_encoder100.finish();
    texture102.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    
    buffer200.destroy()
    texture103.destroy();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture204.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer203 = command_encoder203.finish();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.5, 0.5, -0.25, 0.75, -0.25, -0.25, 0.5, 0.25, 1.0, 0.5, -0.25, -1.0, -0.75, -0.25, 0.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 1.0, 0.5, 1.0, -0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.75, 0.5, 0.0, 0.5, -0.75, 0.25, -0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, -0.5, -0.25, 0.5, 0.5, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.0, -0.25, 0.0, -1.0, 0.5, -0.75, 0.5, -0.25, -0.75, -1.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.5, ]);
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const array4 = new Float32Array([-1.0, 0.75, -0.25, -1.0, 0.0, 0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, -0.25, 0.25, -0.25, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.75, 0.5, 1.0, -1.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.5, 0.0, 1.0, -0.5, -0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, -1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, 0.25, 0.0, 0.25, 1.0, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.25, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setStencilReference(1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    render_pass_encoder2010.setStencilReference(1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture203.destroy();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer202.destroy()
    texture201.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    texture101.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1010.setStencilReference(1);
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    texture205.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    texture104.destroy();
    
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    
    const texture_view2071 = texture207.createView({ label: "texture_view2071" });
    
    texture105.destroy();
    
    texture208.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture207.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture209 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    
    render_pass_encoder2050.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    
    const command_buffer301 = command_encoder301.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder2040.setStencilReference(1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view2090 = texture209.createView({ label: "texture_view2090" });
    const command_buffer103 = command_encoder103.finish();
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeTexture({ texture: texture209 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer203.destroy()
    render_bundle_encoder300.popDebugGroup();
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2050.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    texture300.destroy();
    
    
    
    
    const texture2010 = device20.createTexture({
        label: "texture2010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2050.setStencilReference(1);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
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
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder3020.setStencilReference(1);
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    texture202.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.queue.writeTexture({ texture: texture209 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2050.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    
    
    render_bundle_encoder101.popDebugGroup();
    
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2040.insertDebugMarker("marker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture209 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer102.destroy()
    render_pass_encoder2040.setStencilReference(1);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2050.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    buffer300.destroy()
    const command_buffer304 = command_encoder304.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture209.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    texture400.destroy();
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const texture_view20100 = texture2010.createView({ label: "texture_view20100" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array5 = new Float32Array([-0.25, 0.75, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, -0.25, 1.0, 0.5, 1.0, -1.0, -0.75, -1.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, -0.5, -0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 1.0, 0.25, 1.0, 0.0, -0.25, -0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, -1.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, 0.75, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, 0.25, -0.25, 0.0, -0.75, 0.75, 0.75, 1.0, 0.25, 0.0, 0.5, -0.5, 0.0, 0.5, -0.5, -0.75, -0.25, -0.5, 0.25, ]);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_pass_encoder2040.setStencilReference(1);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder301.popDebugGroup();
    
    texture106.destroy();
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    texture206.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_pass_encoder2050.setStencilReference(1);
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer104.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_pass_encoder3020.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.insertDebugMarker("marker");
    const texture_view20101 = texture2010.createView({ label: "texture_view20101" });
    buffer400.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder1010.setStencilReference(1);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    texture401.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture_view20102 = texture2010.createView({ label: "texture_view20102" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    buffer401.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setStencilReference(1);
    
    buffer103.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder2040.setStencilReference(1);
    buffer204.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.insertDebugMarker("marker");
    
}