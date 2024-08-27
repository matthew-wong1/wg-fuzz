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
    const array0 = new Float32Array([-0.5, 0.25, 0.5, 1.0, -0.5, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 0.75, 0.75, 0.5, -0.5, -1.0, 0.0, 0.5, -0.25, -1.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.75, -1.0, -0.25, 0.5, -0.5, 0.25, 0.25, -0.25, -1.0, 1.0, 0.75, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -1.0, -1.0, -0.25, -0.75, 0.5, 1.0, -0.75, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -1.0, -0.25, -0.5, -0.5, 0.25, 0.0, 1.0, 1.0, -0.5, 0.5, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.25, -0.5, 0.5, 1.0, -0.5, -0.25, -0.5, -0.5, 0.25, -1.0, -1.0, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, -0.25, -0.75, 0.25, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 1.0, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, 0.75, 0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, -0.5, 0.0, 0.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.5, -0.75, 0.5, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.5, -0.5, 0.75, 0.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.75, 0.25, -0.25, 0.75, -1.0, -0.75, ]);
    const array2 = new Float32Array([-0.75, 1.0, -0.5, 0.5, 0.0, 0.25, -0.75, 0.75, -1.0, 1.0, -0.5, -1.0, -0.25, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.75, 0.0, -1.0, 1.0, 0.5, 1.0, 0.25, 0.5, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 0.25, 0.75, 1.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.0, -0.25, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, -0.75, 0.25, 0.0, -0.25, 0.0, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.25, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.0, 0.0, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device00.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([0.25, 1.0, 0.5, 0.75, 0.75, -0.75, -0.75, 0.25, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, 0.75, 0.25, -1.0, 0.25, 1.0, -1.0, -0.25, 0.5, 0.25, -1.0, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, -0.25, 0.25, -0.25, -1.0, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 1.0, -0.25, 0.0, -0.25, -0.5, -1.0, 0.0, -0.25, 0.25, -0.25, 0.75, 0.25, -0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.25, -0.25, 1.0, 0.0, -1.0, 0.0, 0.5, 0.75, 0.5, 1.0, -0.5, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.25, 0.5, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, -0.5, 0.5, 0.5, 0.5, 0.75, -0.25, 0.0, 0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([0.0, 0.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, 0.25, 0.25, 1.0, -0.5, 0.75, 0.75, 0.5, -0.75, -0.25, 0.25, 0.75, 0.0, -1.0, -0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 0.5, -0.75, 0.5, 0.0, -0.5, -0.75, -1.0, 1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 1.0, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, -0.5, 1.0, 0.25, 0.0, -0.5, 0.75, 0.25, 0.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, -1.0, -1.0, 0.5, -0.5, 0.25, 0.75, 0.25, -0.5, 0.75, -0.5, 0.25, 1.0, -0.5, 0.0, -0.25, 0.0, 0.75, 0.75, 0.75, 1.0, 0.5, -1.0, 0.0, 0.5, 0.5, 1.0, -0.75, -0.5, -0.5, -1.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    buffer000.destroy()
    query000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.pushErrorScope("validation");
    const array5 = new Float32Array([0.0, -0.5, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, -1.0, 0.75, 0.5, -0.25, 0.75, -0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.5, -0.5, -1.0, -1.0, 0.0, 0.0, -0.25, 1.0, -0.25, 1.0, -0.25, 0.5, 0.25, -0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -1.0, 0.75, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.75, 1.0, -0.75, 0.0, -0.75, -0.25, -0.5, -0.5, 0.5, 1.0, -0.25, -0.5, 1.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, -0.25, 0.0, ]);
    const array6 = new Float32Array([-0.25, -0.25, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, -0.25, -1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 0.25, 0.5, 0.5, -0.25, -1.0, -1.0, -1.0, -0.25, 0.5, 0.5, -0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.0, -0.25, 0.75, -0.5, 0.5, -1.0, 0.75, 1.0, 0.25, -0.25, -0.25, 1.0, -0.25, -0.25, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, 0.75, 0.75, 0.25, -0.75, -0.75, 0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, 1.0, -0.75, 0.25, -0.75, 0.5, 1.0, 0.5, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.pushErrorScope("internal");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const array7 = new Float32Array([1.0, -0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.25, -1.0, 0.0, 0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, -0.25, 0.25, -1.0, -1.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.75, 0.75, -0.75, 0.25, 0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.5, 0.75, 1.0, 0.75, -1.0, 0.25, -0.25, -0.5, 1.0, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.75, 1.0, 0.0, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, 1.0, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 0.5, -1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    query001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -1.0, 0.75, 0.5, -1.0, 0.25, 0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -1.0, -0.25, 0.5, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.0, -0.5, -0.75, 0.0, -0.5, -0.75, 0.5, 0.25, -1.0, -0.25, 0.5, -0.5, -0.25, 0.75, -1.0, 0.0, 0.25, -0.75, -0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, -1.0, -0.75, 1.0, -1.0, 0.5, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 1.0, 0.75, ]);
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query002.destroy()
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    query000.destroy()
    const array9 = new Float32Array([0.75, 0.25, -1.0, 0.25, -0.25, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, 0.75, 0.5, -0.75, 1.0, -1.0, -0.25, -1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 0.25, -1.0, 0.0, 0.5, 0.0, -0.25, -1.0, -1.0, -0.75, -1.0, 0.75, 0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, -1.0, -0.5, -0.75, 0.75, 0.25, 0.25, -0.75, -0.5, -1.0, -0.25, -1.0, -0.25, 0.0, 1.0, 0.5, 0.75, 1.0, 0.5, 0.75, -0.25, 0.5, 0.0, -1.0, 1.0, -0.25, 1.0, -1.0, -0.25, 1.0, 0.0, 1.0, 0.25, -0.5, -0.25, 1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, -0.25, -0.25, 0.5, 0.25, -0.25, ]);
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    query000.destroy()
    query002.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    query000.destroy()
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query000.destroy()
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    buffer001.destroy()
    const array10 = new Float32Array([1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 0.25, -0.5, -0.5, 0.25, -0.75, 0.25, -0.5, -1.0, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, 1.0, 1.0, -0.25, 0.25, -0.25, -0.75, -0.5, 0.5, 1.0, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, 0.0, 0.0, 1.0, -1.0, 0.25, -1.0, -0.25, -0.75, -0.75, 1.0, -0.75, -0.5, 0.5, 0.0, -0.75, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 0.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.0, -0.25, -0.75, 0.5, ]);
    
    query002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    buffer002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture000.destroy();
    
    texture001.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer300.destroy()
    query001.destroy()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device00.queue.writeBuffer(buffer001, 0, array10, 0, array10.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer300.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    device00.pushErrorScope("validation");
    command_encoder003.insertDebugMarker("mymarker");
    texture301.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    buffer004.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query300.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    command_encoder003.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    query300.destroy()
    query002.destroy()
    texture002.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const array11 = new Float32Array([-0.25, -0.5, 0.5, 1.0, -0.25, 0.5, 1.0, 0.75, 0.75, -0.5, 1.0, -0.5, 0.0, -1.0, 0.0, 0.25, -0.75, 0.75, -1.0, -1.0, -1.0, -0.75, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 1.0, -0.25, -0.5, -0.5, -0.75, 0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.0, -1.0, 0.75, 0.25, 0.5, -0.5, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 0.0, -0.25, 1.0, -0.5, 1.0, 0.0, -0.75, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, -0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -1.0, -1.0, -0.75, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, 0.75, 0.75, -1.0, 0.5, 1.0, -0.5, 0.0, -0.75, -1.0, 1.0, 0.75, -1.0, -1.0, 1.0, 0.5, 0.25, 0.0, ]);
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query300.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer005, 0, array10, 0, array10.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer301 = command_encoder301.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([0.5, -1.0, 0.5, -0.75, 0.0, -1.0, 1.0, -0.5, 0.25, -0.5, 0.25, 0.0, -1.0, -0.5, 1.0, 0.75, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.25, -1.0, -1.0, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.75, 1.0, -0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, 0.25, -0.25, -0.75, 1.0, -1.0, -0.25, 1.0, -0.25, -0.5, -0.75, -0.5, 1.0, 1.0, 1.0, -0.25, -0.5, 0.5, 0.25, 1.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.75, -0.5, 0.25, 0.75, -0.5, 0.5, -0.5, -1.0, 1.0, 0.5, -0.25, 0.0, -1.0, 1.0, -0.5, -0.75, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, -1.0, ]);
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query002.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    query302.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query301.destroy()
    
    
    
    buffer303.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    texture300.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder301.popDebugGroup();
    query300.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder001.popDebugGroup();
    
    
    query300.destroy()
    query304.destroy()
    query303.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    buffer005.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    
    const array13 = new Float32Array([0.25, 1.0, 0.0, 1.0, 1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.75, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, -0.5, -0.25, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -1.0, 1.0, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, -0.75, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, 1.0, -0.75, 0.5, 1.0, 0.25, -1.0, 0.25, -0.75, 0.25, -0.5, -1.0, -1.0, -0.5, -0.25, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, -0.25, 0.5, -0.75, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 1.0, -1.0, 0.25, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer304.destroy()
    
    device50.pushErrorScope("validation");
    
    device40.pushErrorScope("validation");
    
    query000.destroy()
    
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer005
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query302.destroy()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    query001.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    
    render_bundle_encoder000.popDebugGroup();
    query300.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query501.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer006.destroy()
    device10.queue.writeBuffer(buffer100, 0, array13, 0, array13.length);
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    render_bundle_encoder003.popDebugGroup();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    
    const command_buffer500 = command_encoder500.finish();
    query001.destroy()
    texture500.destroy();
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.pushErrorScope("internal");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query301.destroy()
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const command_buffer000 = command_encoder000.finish();
    
    const command_buffer003 = command_encoder003.finish();
    texture004.destroy();
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder003.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array13, 0, array13.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer300.destroy()
    
    const array14 = new Float32Array([-1.0, 1.0, 0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, 0.75, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, -0.75, 0.5, 0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 0.75, 0.25, 0.5, -1.0, 0.5, 1.0, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 0.75, -0.75, -1.0, -0.5, -1.0, 0.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, 1.0, -0.5, 0.75, -1.0, 0.0, -1.0, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, ]);
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    render_bundle_encoder003.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    
    const command_buffer400 = command_encoder400.finish();
    
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    query302.destroy()
    query302.destroy()
    device20.destroy();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query303.destroy()
    
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder300.insertDebugMarker("mymarker");
    texture400.destroy();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder003.insertDebugMarker("marker");
    
    const array15 = new Float32Array([-1.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.5, 0.75, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, 1.0, 1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -1.0, 1.0, 0.5, -0.75, -0.25, 0.25, 1.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.25, -1.0, -1.0, -1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -0.75, -0.5, -0.25, 0.25, -0.5, -1.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.25, 0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, -0.75, -0.25, 0.75, 0.25, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer003, 0, array13, 0, array13.length);
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    compute_pass_encoder0031.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0031.insertDebugMarker("marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query303.destroy()
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
    compute_pass_encoder0031.insertDebugMarker("marker")
    texture302.destroy();
    query304.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture303.destroy();
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
}