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
    const array0 = new Float32Array([-0.25, 0.5, 0.75, -0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.0, 0.0, -1.0, 0.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 0.5, -0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 0.75, -0.75, 0.25, 0.0, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, 0.0, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, -0.5, -0.75, -0.25, 0.0, -0.75, -0.75, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, ]);
    const array1 = new Float32Array([0.5, 0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 0.25, 0.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.5, 0.75, 0.25, 1.0, 0.5, -0.25, -0.5, -0.75, 0.5, 0.75, -0.75, -0.5, -1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -0.25, 1.0, 0.25, -0.75, -0.5, 0.75, -1.0, -0.5, 1.0, -0.75, -0.5, 0.25, 1.0, 0.0, 0.0, -1.0, 0.25, 0.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, 1.0, 0.25, 0.75, 0.5, -1.0, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.0, -0.25, 0.75, -1.0, -0.25, 0.75, 0.0, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, -0.5, 0.0, 0.0, -0.25, 0.5, -1.0, ]);
    
    const array2 = new Float32Array([-0.75, 0.5, -0.75, -0.5, 0.75, -0.5, -0.5, 1.0, 0.25, -0.75, 0.75, 0.5, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -0.75, -0.25, -0.25, -0.25, 0.0, -0.25, 0.5, 0.75, 0.75, -1.0, 0.25, -1.0, 0.5, 0.25, 0.75, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 0.0, -0.5, -0.5, 1.0, 1.0, 0.25, -1.0, 0.5, 0.25, 1.0, 0.25, 1.0, -0.5, 1.0, 0.5, -1.0, 0.5, 0.0, 0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.25, -0.25, 1.0, 0.0, 0.75, 0.0, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, -1.0, -1.0, -1.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, 0.75, -0.5, 0.0, 0.0, -0.75, 0.25, -1.0, ]);
    const array3 = new Float32Array([-1.0, 1.0, 0.0, -0.25, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, 1.0, 0.75, -0.5, 0.75, -0.75, 0.5, 0.75, -0.75, 0.25, 0.5, 0.25, 0.25, -0.25, 0.75, -0.75, -1.0, -1.0, -1.0, -0.25, 0.0, 0.5, -0.25, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, -0.75, -1.0, -1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 0.25, 0.5, -0.75, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 1.0, -1.0, 0.0, 0.75, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, 0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array4 = new Float32Array([-0.75, -0.5, 0.0, 1.0, 1.0, 0.75, -0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, 0.0, -0.75, 0.25, 0.25, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.5, 0.75, 0.75, 0.75, 0.75, 0.25, 0.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.25, 0.5, 0.75, -0.25, -0.25, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, -0.5, 0.75, 0.5, -0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 0.25, 1.0, 0.0, -1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 0.0, -0.75, 0.25, -1.0, -0.25, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -0.75, 1.0, ]);
    
    
    
    
    
    const array5 = new Float32Array([-1.0, 0.5, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.5, -0.75, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, -0.5, -0.25, 0.25, 1.0, -0.75, -0.25, 0.5, 0.75, 1.0, 0.0, 0.25, 0.25, -0.25, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, 0.5, -0.5, -1.0, -0.75, 1.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.5, 0.5, -0.75, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, -0.25, 1.0, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, 1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 0.0, -0.25, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 0.25, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, 0.0, 0.5, ]);
    const array6 = new Float32Array([-0.25, -0.25, -0.75, -0.75, -0.5, -1.0, 1.0, 0.75, 0.5, -0.25, -0.75, 0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, -0.25, -0.75, -0.25, -0.75, 0.0, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, 0.75, 0.5, -0.75, 0.25, -0.5, -0.75, 0.75, 0.25, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, 0.5, 1.0, 1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.5, -0.75, 0.0, -0.75, -1.0, -1.0, -0.75, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.0, 0.5, 0.5, -0.25, 1.0, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 0.75, -0.5, 0.5, -0.25, 0.5, -0.75, 0.0, 0.5, 0.5, 0.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    
    texture100.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array7 = new Float32Array([-0.5, -0.5, 0.25, 0.25, 1.0, -1.0, 0.25, -0.25, 0.25, -0.75, -1.0, 1.0, 0.75, 0.5, 0.75, 0.0, 1.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.5, -0.75, 0.25, 0.5, -0.5, 1.0, 0.75, -0.5, 0.25, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, 0.5, 0.25, -1.0, 0.75, -0.75, 0.0, 1.0, -0.25, 1.0, 1.0, 0.25, 0.5, 0.0, 1.0, -0.75, 0.0, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, -0.5, -0.25, 0.5, -0.5, -1.0, -0.25, -0.5, 0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, 0.0, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -0.25, ]);
    device10.destroy();
    
    const array8 = new Float32Array([1.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.25, 0.5, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, -0.25, -0.25, -0.5, -0.5, 0.25, 0.25, 0.0, 0.75, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 0.5, -0.5, -0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 0.75, 0.0, 0.0, 0.5, 0.25, -0.75, 0.5, -0.25, 1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 1.0, 0.0, -0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.5, -0.25, 0.25, 0.5, -0.5, -0.5, -0.25, 0.5, 1.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.25, -0.75, 0.0, 0.25, ]);
    
    const array9 = new Float32Array([-0.5, -0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, -0.75, 1.0, -0.5, -0.5, -1.0, -0.75, 0.0, -0.5, -0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.75, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 1.0, 0.5, 0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.0, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -1.0, 0.5, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, 0.5, -0.25, -0.5, 0.25, 0.5, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 1.0, 0.5, -0.25, 0.75, -0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture200.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    buffer200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer202.destroy()
    texture201.destroy();
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    texture000.destroy();
    device00.pushErrorScope("validation");
    
    query201.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    texture202.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    device20.pushErrorScope("validation");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device20.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer204.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    buffer205.destroy()
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    texture001.destroy();
    query200.destroy()
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array10 = new Float32Array([1.0, 0.25, 0.0, -0.25, -0.5, 1.0, 0.75, 0.25, 0.25, -0.5, 0.5, 0.75, 0.0, -0.25, 0.25, -0.25, 0.0, 0.5, -0.25, -1.0, -0.75, 0.0, 0.0, 0.25, 0.5, 0.75, 0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 0.0, -1.0, -1.0, 0.75, 0.25, 0.75, -0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 0.25, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 0.5, 1.0, -0.5, -1.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.25, 1.0, 0.5, 1.0, -0.75, -0.5, 0.0, 0.25, 0.25, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, 0.5, -0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -1.0, -0.5, 0.5, 0.5, -1.0, 0.25, -0.5, 0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device30.destroy();
    
    device00.destroy();
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device40.pushErrorScope("internal");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    buffer201.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query203.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query201.destroy()
    device50.pushErrorScope("out-of-memory");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
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
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    buffer208.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    query203.destroy()
    buffer203.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query501.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer500.destroy()
    render_bundle_encoder202.popDebugGroup();
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    buffer209.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    command_encoder502.insertDebugMarker("mymarker");
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const command_buffer500 = command_encoder500.finish();
    
    
    const command_buffer502 = command_encoder502.finish();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    texture203.destroy();
    query502.destroy()
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture500.destroy();
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    query502.destroy()
    
    buffer400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    query400.destroy()
    
    texture401.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer206.destroy()
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    query204.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query203
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture400.destroy();
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query204.destroy()
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    query500.destroy()
    
    
    query204.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder201.popDebugGroup();
    query501.destroy()
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
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
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    
    render_bundle_encoder202.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.executeBundles([])
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder201.insertDebugMarker("marker");
    query202.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    texture501.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    
    
    device50.pushErrorScope("internal");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_bundle_encoder401.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    texture402.destroy();
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder5010.setPipeline(compute_pipeline503);
    query204.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    query201.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2010.setPipeline(render_pipeline202);
    buffer2011.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device20.queue.writeBuffer(buffer2013, 0, array7, 0, array7.length);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    buffer2013.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    query502.destroy()
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    render_pass_encoder2010.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture403.destroy();
    render_pass_encoder2010.popDebugGroup();
    const command_buffer503 = command_encoder503.finish();
    device50.queue.submit([command_buffer503, ]);
    const command_buffer504 = command_encoder504.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder5010.end();
    const command_buffer501 = command_encoder501.finish();
}