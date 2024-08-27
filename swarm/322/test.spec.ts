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
    device00.destroy();
    const array0 = new Float32Array([1.0, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 1.0, -1.0, -0.75, -1.0, 1.0, -0.75, 0.5, -0.5, -0.75, -0.75, -1.0, -0.25, 0.5, -0.75, -0.5, -1.0, -1.0, 0.25, -0.25, 1.0, -0.25, 0.75, 0.25, -0.5, 0.75, 0.75, 0.75, -0.75, -0.75, -0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 0.25, 0.25, 0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 0.75, -0.25, -0.75, 1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.0, -0.75, 0.75, -0.25, -0.25, -0.25, 0.5, 0.25, 0.5, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 0.5, -1.0, 0.5, -0.25, ]);
    const array1 = new Float32Array([-0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, -1.0, 0.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, 0.25, -0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 0.75, -1.0, -1.0, 1.0, 0.5, 0.75, 0.5, -1.0, -0.75, 1.0, -0.25, 0.75, 0.5, -0.25, -0.5, 0.25, 0.5, 1.0, 0.25, 0.0, 0.5, 0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 0.25, -0.5, -1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -0.5, 0.5, -0.5, ]);
    const array2 = new Float32Array([-0.25, 1.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.5, 0.75, 1.0, -0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.25, 0.5, 1.0, -0.25, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.75, -0.75, -0.5, -0.75, 0.0, -1.0, 0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.25, 0.5, 0.25, 0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -1.0, -0.75, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.25, 1.0, 0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -1.0, -0.75, -0.75, -1.0, -0.75, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, -0.75, -1.0, -0.25, 0.0, 0.5, 0.75, 0.75, 1.0, 0.25, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.75, 0.0, -0.5, 0.5, 1.0, -0.75, -0.5, -0.25, 0.25, 0.5, 0.0, -0.75, 0.5, -0.75, -0.25, 0.75, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 1.0, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, 0.0, -0.25, -0.75, 0.75, 0.75, 0.75, -0.5, 1.0, -0.75, -0.75, -0.75, -1.0, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, 0.0, 0.5, -0.5, 0.5, 0.25, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 0.75, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([-0.25, -0.75, -0.75, 0.5, -0.25, 0.75, 0.0, 1.0, -1.0, 1.0, -1.0, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.75, 0.5, -0.25, 0.75, 0.0, -0.5, 0.0, 0.75, 0.75, -0.25, 0.0, 0.25, -0.75, 0.0, -0.25, 0.0, -0.25, -0.75, 0.25, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, -0.75, -1.0, 1.0, -1.0, 1.0, 0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.75, 0.5, -1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -0.5, 1.0, 1.0, 0.5, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, 0.0, 0.0, -0.75, -0.5, -0.5, -0.75, 1.0, 0.25, -0.75, 0.5, 0.5, ]);
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array5 = new Float32Array([-1.0, 0.5, 0.5, 0.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 0.0, 0.0, -0.75, 0.25, -0.75, -0.75, -1.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, 0.25, 0.5, 0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.0, 0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array6 = new Float32Array([1.0, -0.75, 0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 0.0, -0.5, -1.0, 1.0, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 0.0, 0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, -1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.5, -1.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, 0.25, 1.0, -1.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, -1.0, 0.5, -0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, 0.25, -1.0, -0.75, 0.5, 1.0, 0.75, 0.75, 0.5, 0.5, -0.5, 0.5, 1.0, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.destroy();
    const array7 = new Float32Array([0.5, -0.75, 0.0, -0.5, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, 0.25, -0.5, 0.25, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, -0.25, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, 0.75, -0.25, 0.75, 0.5, 1.0, 0.0, -1.0, -1.0, 0.0, -0.75, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, 1.0, 1.0, 0.75, 1.0, 1.0, 0.25, -1.0, 0.0, -0.75, -0.5, -0.5, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, 0.75, -0.75, 0.75, 0.5, -0.5, 0.75, 0.0, 0.75, 1.0, 1.0, -0.75, 0.0, 0.0, -0.25, -0.5, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, 1.0, -0.5, -0.25, 0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 0.0, 1.0, -0.25, 0.0, -0.5, 0.5, -0.25, -0.75, 0.0, 0.75, 0.75, -1.0, 0.5, -0.75, 0.25, -0.5, 0.5, -0.25, 0.5, -0.5, 0.5, -0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -0.25, -0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -0.25, 0.25, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, 0.0, 0.25, 0.5, 0.5, -0.75, -0.75, 0.25, 0.5, 0.75, -0.75, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 0.5, -0.5, -1.0, 1.0, ]);
    const array9 = new Float32Array([-0.5, -0.25, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, -1.0, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 1.0, 0.5, 0.0, -0.75, -1.0, 1.0, 1.0, 1.0, 0.25, 1.0, 0.25, 0.5, 0.75, -0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, -0.25, 0.25, -0.75, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, -0.75, 1.0, 0.5, 0.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, -0.75, -0.25, -0.5, 0.75, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, -0.25, 0.25, 0.5, 0.0, 1.0, 0.75, 1.0, -1.0, ]);
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    query200.destroy()
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.25, 0.25, 1.0, -0.75, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, -0.75, 0.75, -0.75, -1.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.5, 0.5, 1.0, 0.25, 0.75, 0.5, -0.75, 0.25, 0.5, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.75, 1.0, 0.0, -0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, -1.0, -0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, -0.25, 0.5, 0.5, -1.0, -0.5, 0.25, 0.0, 0.0, ]);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query202.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query202.destroy()
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    device20.queue.submit([command_buffer200, ]);
    
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    query201.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    query202.destroy()
    
    
    query200.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device40.pushErrorScope("out-of-memory");
    
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    query201.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    command_encoder201.clearBuffer(buffer202);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device30.pushErrorScope("out-of-memory");
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.clearBuffer(buffer201);
    command_encoder202.clearBuffer(buffer205);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    query204.destroy()
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device20.pushErrorScope("out-of-memory");
    
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder202.clearBuffer(buffer205);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const command_buffer201 = command_encoder201.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    command_encoder202.clearBuffer(buffer202);
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    query202.destroy()
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array7, 0, array7.length);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.clearBuffer(buffer202);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    
    const command_buffer203 = command_encoder203.finish();
    device40.pushErrorScope("validation");
    
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    query206.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const array11 = new Float32Array([-0.5, 1.0, -0.25, -1.0, -0.25, 0.75, -1.0, 1.0, -0.75, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, -1.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.75, -0.75, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, -0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 0.0, 0.75, 1.0, -0.25, 0.25, -0.25, 0.0, -0.5, -0.5, -0.75, 0.25, 0.75, 0.25, -0.5, 0.25, 0.5, -0.25, 0.5, -1.0, -0.5, 0.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.75, 1.0, -0.25, 1.0, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, 1.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, -1.0, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query204.destroy()
    
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    query205.destroy()
    
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query200.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    query201.destroy()
    
    query206.destroy()
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder400.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    query300.destroy()
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    
    query202.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    query200.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const command_buffer204 = command_encoder204.finish();
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    query207.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.insertDebugMarker("mymarker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    query205.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    query301.destroy()
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    
    query205.destroy()
    
    
    const command_buffer402 = command_encoder402.finish();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    query300.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    device20.pushErrorScope("validation");
    query303.destroy()
    query302.destroy()
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    command_encoder400.clearBuffer(buffer400);
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query202.destroy()
    query200.destroy()
    query302.destroy()
    query200.destroy()
    
    query204.destroy()
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    const command_buffer304 = command_encoder304.finish();
    query203.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array9, 0, array9.length);
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    command_encoder303.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    query400.destroy()
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    query200.destroy()
    
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    
    command_encoder403.insertDebugMarker("mymarker");
    const command_buffer401 = command_encoder401.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer303 = command_encoder303.finish();
    device20.queue.submit([command_buffer205, ]);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    const command_buffer400 = command_encoder400.finish();
    const command_buffer301 = command_encoder301.finish();
    device20.queue.submit([command_buffer204, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
}