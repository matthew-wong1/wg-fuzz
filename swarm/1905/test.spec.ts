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
    
    device00.pushErrorScope("out-of-memory");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array0 = new Float32Array([0.25, 1.0, -0.25, -0.75, -0.75, -0.25, 0.75, 0.5, -0.5, -1.0, -0.25, 0.75, 0.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.75, -0.5, 0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 0.25, 1.0, 0.5, 1.0, -0.25, 0.75, 0.75, -0.25, 0.25, -1.0, -0.5, -0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, -0.75, 0.0, -0.75, -0.5, -0.75, -0.5, -0.75, 0.75, -0.75, -0.5, 0.75, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, -0.75, -1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 0.5, 1.0, -1.0, -0.75, 0.0, 1.0, -0.75, 0.25, 0.5, 0.25, -0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.25, -1.0, -0.25, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([0.5, -1.0, -0.25, 1.0, -0.75, -1.0, 0.0, -0.75, 0.75, 0.75, 0.75, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, 1.0, 0.75, -0.75, -1.0, -1.0, 0.75, -0.75, 0.25, 1.0, 1.0, 0.25, 0.75, 1.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.25, 1.0, -1.0, 0.0, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 1.0, -0.5, 0.75, -1.0, -0.75, 0.5, 0.25, -0.5, -0.25, -0.25, 0.0, 1.0, -0.5, 0.75, -1.0, 0.5, -0.25, -0.75, 0.5, -0.5, 0.0, -0.5, 0.75, 0.0, 0.5, -1.0, 0.25, 0.25, 0.0, 1.0, -1.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 1.0, -1.0, -1.0, -0.75, 0.5, 0.75, 0.0, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const array2 = new Float32Array([-0.25, 0.0, 0.0, 1.0, 1.0, -0.5, 0.75, -0.25, 0.25, 0.0, 0.25, 0.25, -0.75, 0.0, 0.25, -0.5, 0.25, 0.25, 0.75, -1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.75, -0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.75, 0.75, 0.25, 0.0, 0.75, 0.0, 0.75, -1.0, -0.75, 1.0, 0.25, -1.0, 1.0, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.25, 0.5, 1.0, -0.5, 0.25, -0.75, -0.25, -0.5, -1.0, -0.5, -1.0, -1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 1.0, -0.25, 1.0, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 0.25, 0.25, -0.75, -0.75, 0.5, 0.25, ]);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const array3 = new Float32Array([-0.5, 0.5, 0.5, 0.75, 0.5, -1.0, 1.0, 0.5, -0.5, 1.0, 0.5, 0.0, -0.5, -0.5, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, 0.0, -0.75, -0.75, -0.75, -0.25, 0.5, -1.0, 0.25, 1.0, -0.5, 0.25, 0.5, -1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, -0.25, -0.25, 0.25, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, 0.0, 0.25, 0.0, 1.0, 0.0, 0.25, 1.0, -0.25, -1.0, -0.25, 1.0, -1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, 0.75, -0.25, 0.0, 0.75, 0.0, 0.5, 1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array4 = new Float32Array([0.25, 1.0, 0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, 0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -1.0, -0.5, 0.75, 0.25, 0.25, 0.25, 0.25, 0.5, 0.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 0.5, -0.5, 0.25, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, -1.0, 0.5, -0.75, 0.25, 0.25, 0.75, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, -0.25, 0.5, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.75, 1.0, ]);
    
    const array5 = new Float32Array([-1.0, 0.25, -0.75, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 0.5, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.25, 0.0, 0.5, -0.25, 0.0, 0.25, -0.75, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -0.25, -1.0, 0.0, -0.25, 0.75, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 1.0, -0.25, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.5, 0.25, -0.5, 0.25, -0.25, 0.5, -1.0, -0.25, -0.5, 0.25, 0.75, 1.0, -0.75, -0.5, -0.25, -1.0, -1.0, -0.75, ]);
    
    
    
    
    const array6 = new Float32Array([1.0, 0.25, 0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 0.75, -0.25, 0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, 1.0, -0.25, 0.25, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.0, 0.25, 0.25, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.75, -1.0, -1.0, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, 0.25, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, 1.0, 1.0, -0.75, 0.75, 0.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.25, 0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.75, 1.0, -0.75, 0.5, -0.75, 0.75, -0.25, -0.5, ]);
    
    
    const array7 = new Float32Array([1.0, 0.5, 0.5, -1.0, 0.5, 0.0, 1.0, -0.75, 1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -0.5, -0.5, -0.5, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.25, -0.75, -0.5, 0.5, -0.5, 1.0, 1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 0.5, -1.0, 0.5, -0.25, 0.5, -0.25, -0.75, -0.5, 1.0, -0.75, 0.25, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, 1.0, -1.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.5, -0.75, 0.75, 0.0, ]);
    
    
    device10.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array8 = new Float32Array([0.0, -0.75, 0.75, -0.75, 0.75, 1.0, 1.0, 0.75, -0.75, -1.0, 1.0, 1.0, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.25, -0.25, -0.75, 0.25, -0.75, 0.75, 0.0, -1.0, 0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, -0.25, 0.0, -1.0, 0.75, 0.25, 0.25, -0.75, -1.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, -0.5, 0.0, -1.0, 1.0, 0.0, 1.0, -0.25, -0.5, -0.75, 1.0, -1.0, 0.5, 0.75, -0.75, -0.75, 0.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.5, 0.25, 1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.0, -0.5, -0.25, 0.5, 0.25, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.0, 0.25, 0.75, 0.75, -0.75, 0.0, ]);
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("validation");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array9 = new Float32Array([0.25, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 1.0, 0.5, -0.5, 0.5, -0.5, -1.0, 0.75, 0.5, -0.5, 0.25, -0.75, -0.75, -0.75, -0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 1.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -1.0, 0.75, -1.0, 1.0, -0.75, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, 0.0, 0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.5, 0.75, -0.5, -0.75, -0.25, 1.0, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.0, 0.0, 0.5, -0.5, -0.75, 0.75, 0.75, -0.5, 0.5, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device20.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const array10 = new Float32Array([0.25, -0.75, 0.5, 1.0, -0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.25, 0.0, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 0.5, 0.75, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, -0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 0.75, 0.5, -0.75, 0.75, 0.5, -0.25, 0.0, 0.25, 0.0, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, 1.0, 1.0, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, -1.0, -0.5, 0.0, -0.25, 0.0, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 0.75, 0.75, 1.0, -0.25, 1.0, ]);
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder400.popDebugGroup();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder400.pushDebugGroup("mygroupmarker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.pushErrorScope("validation");
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer400.destroy()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    
    
    buffer401.destroy()
    
    device40.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture200.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    buffer201.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.insertDebugMarker("mymarker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.copyTextureToBuffer(
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
    buffer202.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array11 = new Float32Array([-1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.0, 0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 0.75, -0.75, -0.25, 0.5, 0.5, 0.0, 0.75, -0.5, -0.5, 0.5, 0.5, -0.75, 0.75, -0.75, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.0, -0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 1.0, 0.75, -0.5, -0.5, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 0.5, -0.25, 1.0, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.75, -0.25, 0.0, 1.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.5, 0.25, 0.0, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const array12 = new Float32Array([-0.75, -0.75, -0.75, -0.75, 0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, -0.75, -0.75, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 0.0, -0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -0.75, 0.0, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, 0.5, -1.0, -0.75, 0.25, -1.0, -1.0, 0.0, 0.5, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, 0.0, -0.25, -0.5, 0.75, 1.0, -0.5, 0.25, 0.0, -0.75, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, 1.0, 0.5, 0.5, -0.25, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const array13 = new Float32Array([0.0, -0.75, -1.0, -0.5, -0.75, 0.25, -1.0, -0.75, -0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 1.0, -1.0, -1.0, -0.5, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, 1.0, -0.5, 0.0, 1.0, 0.0, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, 0.5, 0.0, -0.75, 0.25, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, 0.5, -1.0, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 0.5, -1.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 0.25, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder204 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder204",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    render_bundle_encoder203.insertDebugMarker("marker");
    render_bundle_encoder203.pushDebugGroup("group_marker");
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture000.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder203.popDebugGroup();
    render_bundle_encoder204.pushDebugGroup("group_marker");
    render_bundle_encoder203.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.clearBuffer(buffer204);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.pushErrorScope("out-of-memory");
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer204,
        0,
        400
    );
    device20.queue.writeBuffer(buffer204, 0, array13, 0, array13.length);
    device20.queue.writeBuffer(buffer203, 0, array11, 0, array11.length);
    
    command_encoder202.clearBuffer(buffer204);
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer205,
        0,
        400
    );
    buffer203.destroy()
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    texture401.destroy();
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    
    
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array13, 0, array13.length);
    command_encoder202.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer204, 0, array12, 0, array12.length);
    command_encoder202.clearBuffer(buffer204);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer200.destroy()
    
    buffer204.destroy()
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    buffer206.destroy()
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder202.clearBuffer(buffer203);
    render_bundle_encoder200.popDebugGroup();
    
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array14 = new Float32Array([1.0, -1.0, -0.25, -1.0, 0.25, 0.0, 0.5, 0.75, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -0.25, 0.5, 0.25, 0.5, 0.25, 0.5, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, -0.25, 1.0, 0.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.0, 0.5, 0.5, -0.5, 0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, 0.25, -1.0, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.0, -0.5, -0.75, 0.0, 0.0, 1.0, -0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.5, 0.5, 0.75, 0.0, ]);
    command_encoder202.clearBuffer(buffer201);
    
    
    render_bundle_encoder203.popDebugGroup();
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.popDebugGroup();
    
    const array15 = new Float32Array([0.75, 0.25, -0.75, -0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 0.0, 0.0, -0.25, -0.5, 1.0, 0.25, -0.5, -1.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, 0.75, 0.25, 0.0, 0.0, 0.25, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.75, 0.25, -0.25, -0.25, -0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.0, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, -0.75, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, 0.75, -0.25, 0.75, -1.0, -0.5, 0.0, 0.75, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    buffer205.destroy()
    
    texture201.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    
    buffer204.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    render_bundle_encoder203.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer401.destroy()
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    texture203.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    device50.destroy();
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer204, 0, array14, 0, array14.length);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    render_pass_encoder2020.executeBundles([render_bundle_encoder203, ])
    render_pass_encoder2030.popDebugGroup();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2021.executeBundles([render_bundle_encoder201, ])
    
    
    
    const array16 = new Float32Array([0.0, 0.0, 0.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.25, 0.75, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, -0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -0.75, 0.25, 0.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.0, -0.25, 1.0, 0.75, -1.0, 0.5, -0.75, 1.0, 0.25, -0.5, 0.75, -1.0, 0.5, 0.5, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.5, -1.0, 0.0, 0.75, -0.5, -1.0, -0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.75, -1.0, 0.5, -0.5, -0.5, -0.75, 1.0, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -1.0, -0.5, -0.75, -1.0, -0.75, 0.25, 0.0, 0.75, -0.75, ]);
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder2021.executeBundles([render_bundle_encoder203, ])
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder203.popDebugGroup();
    const array17 = new Float32Array([-1.0, -0.25, -0.5, -0.25, 0.25, 0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 0.75, 0.75, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -0.5, -0.75, -1.0, 1.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, -0.5, 0.75, 0.5, 0.25, -0.25, 0.75, -0.5, 0.5, 0.75, 0.0, 0.75, 1.0, -0.75, -0.75, 0.5, 0.25, -0.25, -0.25, 0.75, 0.0, 1.0, 0.75, 1.0, 0.0, 1.0, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.5, -0.25, -1.0, -0.75, 0.75, -0.25, 0.5, -0.25, 0.25, -0.75, 0.25, -0.5, 1.0, -0.25, 1.0, ]);
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    texture200.destroy();
    buffer207.destroy()
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view2052 = texture205.createView({ label: "texture_view2052" });
    
    
    
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder202.copyBufferToBuffer(
        buffer206,
        0,
        buffer201,
        0,
        400
    );
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    render_pass_encoder2021.executeBundles([])
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture205.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device20.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2051,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer205
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array14, 0, array14.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer202.destroy()
    texture201.destroy();
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_pass_encoder2001.executeBundles([render_bundle_encoder204, ])
    device20.destroy();
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    texture001.destroy();
    render_bundle_encoder202.popDebugGroup();
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}