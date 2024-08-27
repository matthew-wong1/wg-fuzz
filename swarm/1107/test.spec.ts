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
    
    
    
    
    const array0 = new Float32Array([0.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.0, 0.0, 0.75, 1.0, -0.5, 1.0, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.25, -0.5, 0.5, 0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -0.5, 0.75, -0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.25, 0.75, -0.5, 0.5, -0.25, 1.0, -0.25, -0.75, 0.5, 1.0, -0.75, -0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, 0.5, 0.0, 0.5, 0.25, 1.0, -0.5, 1.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.0, -0.25, 0.75, 1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, -0.25, -0.25, 0.25, 0.5, 0.0, -0.5, 0.0, -0.75, 0.0, 0.75, -0.25, 0.75, -0.75, -0.5, -0.5, -0.75, -0.25, -0.25, -0.75, 0.0, 0.25, 1.0, 0.25, -0.75, 1.0, 0.25, -1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, 0.75, -1.0, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 1.0, 1.0, -0.25, -0.25, 0.5, -0.75, -0.25, 1.0, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, 0.75, -0.25, -0.25, 0.0, -0.5, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 1.0, 0.75, 0.25, 1.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.25, 0.75, 0.0, 0.0, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, -0.25, 0.5, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.25, 0.0, 1.0, -1.0, -0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.75, -0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.0, 0.5, -1.0, 1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -1.0, 0.5, 0.0, 0.5, 0.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.25, -1.0, 0.25, -0.5, 0.25, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -0.5, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([1.0, -0.75, -1.0, 0.0, 0.5, 0.5, -1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 0.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.75, -0.5, 0.75, 1.0, -0.25, 0.5, -0.25, -1.0, 0.0, -1.0, 0.0, 0.0, -0.25, 0.5, -1.0, 0.5, 0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -0.5, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, -0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.25, -0.25, 1.0, 0.75, -0.25, 0.5, 0.0, 1.0, -0.75, 0.25, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, -0.75, 0.0, 0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, -0.25, 1.0, 0.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([-0.5, -1.0, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, 0.25, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, -1.0, 0.5, 0.5, -0.25, 0.75, -0.5, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 0.75, 0.75, -0.75, -0.25, 0.5, -0.5, 0.25, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, -1.0, 0.25, 1.0, 0.75, -1.0, 0.25, 0.75, 0.5, -0.75, 1.0, 1.0, 1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.5, 0.25, -0.25, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.submit([]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([-1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, -0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 0.75, -0.5, 1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.0, -1.0, 0.25, -0.5, 0.25, 0.0, 0.25, -1.0, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, -0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.5, 1.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, 0.0, -0.75, -0.5, -0.25, -1.0, 0.5, -1.0, 0.0, -0.5, -0.25, -0.75, 0.75, -0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.5, -0.75, 0.5, -0.75, -1.0, 0.25, 0.75, -1.0, -0.25, -0.5, -0.75, 1.0, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, 0.5, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    texture202.destroy();
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture201.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder2000.popDebugGroup();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.pushErrorScope("validation");
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture200.destroy();
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2000.executeBundles([])
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    
    
    device50.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.popDebugGroup();
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer200.destroy()
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([0.0, -0.25, 0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 0.25, 1.0, -0.75, 0.5, 1.0, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, 1.0, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, -1.0, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 0.5, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.25, -0.25, -0.25, -0.5, 0.75, -0.75, 0.25, -0.25, -0.75, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, -1.0, 0.0, -1.0, -0.25, 0.25, -0.25, 0.25, 0.0, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, -1.0, -0.75, -0.75, 0.0, 0.5, 1.0, 0.5, 0.25, 0.25, -0.25, 0.0, -0.75, 1.0, 0.75, -0.5, -0.75, -1.0, ]);
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture205.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture206.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    buffer600.destroy()
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    const array7 = new Float32Array([0.25, 1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.75, 0.25, 0.0, 1.0, 1.0, 0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 1.0, -0.25, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.0, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.5, -1.0, 0.25, 0.5, 1.0, -0.5, -1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, 0.0, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, 1.0, -1.0, -0.75, -1.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, -1.0, -0.75, -0.25, 1.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.75, 1.0, 0.25, -0.5, -0.5, 0.25, -0.25, 1.0, ]);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    texture300.destroy();
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
        occlusionQuerySet: query300
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    buffer601.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture203.destroy();
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2001.insertDebugMarker("marker");
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    render_pass_encoder2001.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    render_pass_encoder2001.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_pass_encoder2000.executeBundles([])
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    texture301.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer301.destroy()
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    buffer300.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture304.destroy();
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    texture303.destroy();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3021.executeBundles([render_bundle_encoder302, ])
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    const render_pass_encoder2002 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    
    render_pass_encoder2002.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder3030.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture305.destroy();
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    texture204.destroy();
    device60.pushErrorScope("internal");
    
    render_pass_encoder3020.insertDebugMarker("marker");
    buffer900.destroy()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("validation");
    render_pass_encoder3020.popDebugGroup();
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_pass_encoder2000.setStencilReference(1);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3030.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_pass_encoder2001.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2001.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder2001.setStencilReference(1);
    buffer602.destroy()
    buffer300.destroy()
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    render_pass_encoder2002.insertDebugMarker("marker");
    const compute_pass_encoder6011 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6011" });
    buffer202.destroy()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    render_pass_encoder2001.executeBundles([])
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.executeBundles([])
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder2011.insertDebugMarker("marker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2011.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2011.insertDebugMarker("marker");
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.pushErrorScope("out-of-memory");
    const render_pass_encoder2003 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: query204
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2011.executeBundles([render_bundle_encoder201, ])
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    render_pass_encoder3010.executeBundles([])
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device90.pushErrorScope("out-of-memory");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder2003.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3021.executeBundles([])
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2003.pushDebugGroup("group_marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture304.destroy();
    render_pass_encoder2002.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder3010.pushDebugGroup("group_marker");
    buffer603.destroy()
    buffer201.destroy()
    render_pass_encoder2001.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2003.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    render_pass_encoder2002.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder2011.popDebugGroup();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    buffer302.destroy()
    render_pass_encoder2003.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder3030.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2003.popDebugGroup();
    render_pass_encoder3011.executeBundles([])
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder2002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3020.popDebugGroup();
    var shader_module6012_code = "";
    try {
        shader_module6012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6012 = await device60.createShaderModule({ label: "shader_module6012", code: shader_module6012_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    texture500.destroy();
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
    });
    
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder2002.executeBundles([])
    
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder2002.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder2002.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder2003.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
}