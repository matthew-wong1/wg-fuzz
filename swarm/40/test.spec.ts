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
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.25, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, 1.0, -1.0, 0.5, 0.75, 0.25, -0.5, 0.25, 1.0, 0.5, -1.0, 1.0, 1.0, -0.75, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, 1.0, -0.25, 1.0, -0.5, -0.25, -0.25, 0.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.5, 0.0, 0.75, -0.75, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, -0.25, 0.75, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -0.25, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array1 = new Float32Array([0.75, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.75, -0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, 1.0, -0.5, -0.25, -0.75, -0.75, 0.0, -0.25, 0.25, -0.75, 0.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.5, 0.0, -0.75, -0.75, 0.5, 1.0, -0.5, -0.75, 0.5, -0.25, -0.75, 0.25, 0.0, -0.5, 0.75, -0.75, 0.5, 0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, -0.75, -0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, -0.5, 0.0, -0.75, -1.0, 1.0, 0.5, -0.25, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.destroy();
    
    
    const array2 = new Float32Array([0.75, -0.5, 0.5, 0.25, -0.75, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.75, 0.5, 0.5, -0.5, -1.0, 0.75, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 1.0, -0.75, -0.5, 0.5, -0.25, -0.5, 0.75, 0.75, -0.75, 0.75, -1.0, 1.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.25, 0.5, 0.0, -0.25, 0.25, 0.25, 0.5, 1.0, 0.75, 1.0, 0.0, -0.25, 0.5, 0.25, -0.5, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, -0.25, 0.5, -1.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.5, -0.75, -0.5, 1.0, 1.0, 1.0, -1.0, 0.5, 0.0, 0.0, 0.0, 0.75, 0.25, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.0, -0.5, 0.0, 0.5, -0.75, 0.25, 0.75, -0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("out-of-memory");
    
    query200.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query200.destroy()
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer000.destroy()
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("out-of-memory");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture000.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device40.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.executeBundles([])
    const command_buffer200 = command_encoder200.finish();
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer001.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture001.destroy();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.beginOcclusionQuery(1)
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0000.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("internal");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.endOcclusionQuery()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0000.endOcclusionQuery()
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device20.pushErrorScope("internal");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const array3 = new Float32Array([0.5, 1.0, 0.0, -0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.5, 0.25, 0.5, 0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 0.75, 0.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.25, 1.0, -0.75, 0.75, -0.25, 1.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 1.0, -0.5, 0.25, 0.0, 0.0, -1.0, 0.75, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 1.0, -0.25, 0.25, -0.25, 1.0, 0.25, -1.0, -0.25, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.75, -0.75, -1.0, 0.5, -0.25, ]);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_buffer301 = command_encoder301.finish();
    command_encoder300.clearBuffer(buffer300);
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture402.destroy();
    
    const array4 = new Float32Array([0.5, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, 0.0, 0.75, -1.0, 0.5, 0.0, -0.25, 0.5, 1.0, -1.0, 0.25, -0.25, 0.0, 1.0, 1.0, -1.0, -0.25, 0.75, -0.5, -0.75, -0.5, -0.75, 1.0, 0.0, 0.5, -0.5, 1.0, 1.0, -1.0, -0.5, 0.5, -0.75, -0.5, -1.0, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 1.0, 0.75, -1.0, -0.5, -0.75, 0.25, 0.75, 0.75, -0.75, -0.25, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, 0.5, -0.5, 0.0, -0.25, -0.25, 0.0, -0.5, 0.75, -1.0, 0.25, 0.75, 1.0, -1.0, -0.25, ]);
    render_bundle_encoder401.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer301.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer302 = command_encoder302.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("out-of-memory");
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.beginOcclusionQuery(2)
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    texture002.destroy();
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
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture200.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.popDebugGroup();
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
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
    render_pass_encoder0010.beginOcclusionQuery(3)
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    buffer004.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([1.0, 1.0, -1.0, 0.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, 1.0, -0.5, 0.0, 0.25, 0.25, 0.75, 1.0, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.5, 0.75, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, 0.25, -1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -1.0, 0.25, -0.75, -0.25, 0.25, -0.25, -0.25, 0.0, -0.75, -0.25, 0.0, -0.5, 0.0, -0.25, 0.25, 0.75, -0.25, -0.5, -0.5, -0.25, 0.5, -1.0, -0.25, 0.0, -0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.25, 0.5, -0.5, 0.75, 0.75, 0.0, -0.25, -0.75, -0.75, 0.75, -0.5, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 0.75, 0.0, -0.75, ]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.endOcclusionQuery()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_pass_encoder0010.executeBundles([])
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer202.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    buffer300.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.beginOcclusionQuery(4)
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture202.destroy();
    texture301.destroy();
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    render_pass_encoder0000.executeBundles([])
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const array6 = new Float32Array([0.0, 0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, -1.0, 0.0, -0.5, -0.5, 1.0, 0.0, 1.0, -0.25, -0.75, 0.5, -0.5, -0.25, -0.5, 0.5, -0.75, 0.0, -0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, 0.25, 0.75, 0.25, 1.0, 0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.5, -0.25, 0.75, -1.0, -0.25, 0.75, -0.25, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, -0.5, 0.0, -1.0, -0.75, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, 0.5, 1.0, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -0.5, -1.0, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0000.endOcclusionQuery()
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0010.endOcclusionQuery()
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.beginOcclusionQuery(5)
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder0010.setStencilReference(1);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3030.setStencilReference(1);
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder002.popDebugGroup();
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    texture302.destroy();
    buffer003.destroy()
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0000.endOcclusionQuery()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0000.beginOcclusionQuery(6)
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.clearBuffer(buffer203);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.clearBuffer(buffer203);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder0010.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3030.executeBundles([])
    command_encoder300.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    const command_buffer300 = command_encoder300.finish();
    query201.destroy()
    
    buffer203.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture203.destroy();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer302.destroy()
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_pass_encoder3030.setStencilReference(1);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_pass_encoder2010.executeBundles([])
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder002.popDebugGroup();
    buffer303.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder3040.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0010.beginOcclusionQuery(7)
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer204.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3050.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array7 = new Float32Array([0.0, -0.75, -0.25, -0.75, -0.75, 0.75, 0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 0.5, -0.75, -1.0, 0.75, -0.25, 0.75, 0.75, 0.75, 1.0, 0.25, -0.5, -0.75, 0.0, 0.5, -0.75, 0.75, 1.0, 0.25, -0.25, 0.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 0.75, 0.5, 0.75, 0.0, 1.0, -0.5, 0.25, -0.75, 0.75, 0.5, -0.75, 0.0, -0.75, -0.5, -0.5, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.25, -0.75, 0.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.25, 1.0, 0.5, 0.75, -1.0, ]);
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query001.destroy()
    render_pass_encoder0010.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query201.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
}