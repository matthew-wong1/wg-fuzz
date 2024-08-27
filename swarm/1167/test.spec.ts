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
    const array0 = new Float32Array([0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, 0.75, -1.0, -1.0, 1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 0.0, 0.5, -0.5, 0.25, -1.0, -0.75, -0.25, -1.0, 0.75, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.75, -0.5, -0.25, -0.75, 0.5, -0.25, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, 0.25, -0.5, 0.5, 0.5, 1.0, 0.75, -0.75, 0.25, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.25, 0.25, 1.0, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, 1.0, 0.0, 0.5, ]);
    
    const array1 = new Float32Array([0.0, -0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.5, -1.0, 0.5, 0.0, -0.5, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, 1.0, -0.25, -0.25, -0.75, -0.75, -0.5, -0.5, -0.5, 0.0, -0.75, 0.0, 0.25, 0.25, -0.25, 0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, -1.0, 0.5, -0.5, 0.0, 0.25, 1.0, -0.5, 0.75, -0.5, 1.0, 1.0, -0.5, 1.0, 0.5, 0.25, 1.0, 1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.75, 0.5, -1.0, 1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, -0.25, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, ]);
    const array2 = new Float32Array([-0.75, -0.5, -0.75, 1.0, -0.75, -0.25, 0.75, -1.0, -1.0, -0.75, 0.75, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 0.75, -0.25, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, -0.75, 1.0, -0.25, -0.5, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 0.75, -1.0, -0.25, 1.0, 0.0, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.0, -1.0, -0.25, -0.25, 0.5, 0.0, 0.75, -0.75, 0.0, 0.25, -0.25, 0.5, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, -0.75, -0.5, -0.75, -0.75, 1.0, 0.0, 0.5, 0.75, -0.75, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([0.75, -1.0, 0.75, 0.5, 0.75, -0.25, 0.5, 0.25, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.75, -1.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, 0.25, 0.5, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, 0.25, 1.0, 0.75, -0.5, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, -1.0, 1.0, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 1.0, -0.25, -0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -0.25, 0.0, 1.0, 1.0, -0.5, 0.75, 1.0, 0.25, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.destroy();
    
    const array4 = new Float32Array([-1.0, 0.25, 0.25, 0.25, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.25, -0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 0.75, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, 0.25, 0.75, 0.0, -0.75, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.25, -1.0, -0.5, -1.0, -0.75, -0.75, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.75, -1.0, -1.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.75, 1.0, 0.25, -0.5, -0.75, ]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array5 = new Float32Array([-0.75, 0.5, 0.0, 0.0, 0.5, -1.0, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, -0.75, -1.0, -0.5, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, 0.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 0.25, -0.5, 0.25, -0.25, 0.75, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.25, 1.0, 0.0, -0.25, 1.0, 0.75, -0.5, 0.75, -0.5, -0.5, 0.75, -0.5, 0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 0.0, -1.0, 0.5, -0.75, -1.0, -0.25, -1.0, -0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, 0.25, ]);
    
    
    const array6 = new Float32Array([-0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 0.0, 0.75, 0.5, -0.75, -1.0, 0.5, 0.25, 1.0, 0.5, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.5, 0.5, -0.75, -0.25, 0.0, -1.0, -1.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.75, -0.25, -0.75, -1.0, -0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, 0.5, 0.75, -0.25, 0.25, -0.5, -0.75, 0.0, -0.5, -0.75, 1.0, 0.75, -0.5, 0.5, 0.25, -1.0, 1.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 0.75, 0.5, 1.0, 0.75, -0.5, -1.0, -0.75, 1.0, -0.25, 0.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.5, -0.25, -1.0, 0.75, -1.0, 1.0, -0.5, -0.5, -0.75, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const array7 = new Float32Array([0.75, -0.5, 0.75, 1.0, 0.5, 0.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -0.5, -0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 1.0, 0.25, 0.75, -0.25, 0.5, -0.25, -1.0, 0.25, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, -0.25, 0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -1.0, 0.5, -0.75, -1.0, -0.25, -1.0, 0.75, -0.5, 0.25, -0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, -0.5, 0.75, 0.5, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.0, -0.75, 1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([-1.0, 1.0, -0.75, 0.5, -0.5, -1.0, -0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.0, 0.25, 0.75, 0.75, 0.0, 0.5, -0.75, 1.0, 1.0, 0.25, 0.25, -1.0, 0.0, 0.5, -0.75, 1.0, 0.5, 1.0, 0.0, 0.5, -0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.75, -0.25, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.75, 1.0, 1.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 0.25, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -0.25, ]);
    const array9 = new Float32Array([0.25, 0.75, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 0.75, 0.75, 0.0, 1.0, 0.0, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, 0.75, 0.0, -0.5, -1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -1.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, 0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, -0.5, 0.0, -1.0, -1.0, 1.0, 0.75, 0.0, -0.25, -0.25, 1.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    query600.destroy()
    
    
    
    
    device60.destroy();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer500 = command_encoder500.finish();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
    device50.pushErrorScope("out-of-memory");
    
    
    texture500.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const array10 = new Float32Array([0.75, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.5, -0.75, 0.75, -0.25, 0.5, 0.25, 0.5, -0.5, -0.5, -0.75, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, -0.25, -0.5, -1.0, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, 1.0, 0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, -0.5, 0.75, 0.0, 0.5, -0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.5, 1.0, -1.0, 0.25, 0.25, 0.0, -0.75, 0.5, -1.0, 0.0, 0.0, 0.5, -0.5, -0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -0.5, -0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, -1.0, 0.0, 0.5, 0.75, -0.25, -1.0, 0.0, 0.25, ]);
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const array11 = new Float32Array([-0.25, -0.75, 0.0, 1.0, 0.75, 0.75, 0.5, 1.0, -0.25, 1.0, -0.25, 0.0, 0.0, 0.75, 0.5, -1.0, 0.75, -0.5, -0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -1.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, -0.25, -1.0, 0.75, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -0.75, -0.75, -1.0, 0.75, 0.5, 0.5, 0.0, -1.0, 0.5, -0.25, -0.75, 0.5, -0.25, -0.75, -0.75, -0.75, -1.0, 0.5, 0.0, -0.5, -0.5, -0.75, -1.0, 0.5, -1.0, -0.75, -0.75, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.5, 0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 1.0, -0.5, -1.0, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer501 = command_encoder501.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder500.popDebugGroup();
    device30.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query501.destroy()
    const array12 = new Float32Array([-0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -1.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -1.0, 0.25, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, 0.5, -0.75, -1.0, 0.5, 0.75, 0.5, -0.25, -0.25, -0.5, 1.0, -0.75, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.75, -0.25, 0.0, -0.25, 0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -1.0, -0.5, 0.25, -1.0, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, 0.75, -0.25, 0.0, -0.5, -0.5, -0.75, 0.75, 0.25, -1.0, ]);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device70.destroy();
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
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
    render_bundle_encoder500.popDebugGroup();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.insertDebugMarker("mymarker");
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    query503.destroy()
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
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    query504.destroy()
    query504.destroy()
    compute_pass_encoder5020.insertDebugMarker("marker")
    compute_pass_encoder5020.insertDebugMarker("marker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
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
    
    query502.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder503.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder500.popDebugGroup();
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    command_encoder503.insertDebugMarker("mymarker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    
    
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    render_bundle_encoder502.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    device80.destroy();
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    
    render_bundle_encoder501.setPipeline(render_pipeline501);
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    
    
    command_encoder504.insertDebugMarker("mymarker");
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    
    
    query502.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline505);
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device70.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    
    render_bundle_encoder502.setPipeline(render_pipeline505);
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder504.insertDebugMarker("mymarker");
    query500.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const array13 = new Float32Array([1.0, -1.0, -0.5, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, 0.5, -1.0, 1.0, 0.25, -0.25, -1.0, -0.5, 1.0, 0.5, -0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -1.0, 0.0, 1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 0.25, -1.0, -0.75, 1.0, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, 0.0, 0.25, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, -0.25, -0.25, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 0.25, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 0.5, -0.5, -0.75, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, -1.0, 0.0, 0.5, -0.5, 0.5, 0.25, -0.25, -1.0, 1.0, -0.75, 1.0, 0.75, 0.5, 0.0, 1.0, -1.0, 0.5, 0.25, ]);
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query502.destroy()
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5040.insertDebugMarker("marker")
    query505.destroy()
    
    const compute_pass_encoder5041 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5041" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    texture201.destroy();
    query201.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_buffer503 = command_encoder503.finish();
    
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    
    device50.queue.writeBuffer(buffer502, 0, array12, 0, array12.length);
    compute_pass_encoder5040.insertDebugMarker("marker")
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    compute_pass_encoder5020.insertDebugMarker("marker")
    compute_pass_encoder5041.insertDebugMarker("marker")
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    compute_pass_encoder5020.popDebugGroup()
    query200.destroy()
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture501.destroy();
    
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    query504.destroy()
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder505.clearBuffer(buffer504);
    query504.destroy()
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder502.insertDebugMarker("mymarker");
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    
    device90.pushErrorScope("validation");
    command_encoder505.clearBuffer(buffer507);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    
    
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    device50.queue.writeBuffer(buffer505, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    device50.queue.writeBuffer(buffer507, 0, array9, 0, array9.length);
    
    device50.queue.writeBuffer(buffer504, 0, array8, 0, array8.length);
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array14 = new Float32Array([-0.75, -0.5, 0.75, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 1.0, -0.5, 0.5, -0.75, 0.0, -1.0, 1.0, -0.5, 0.5, 1.0, 0.75, 0.25, -0.5, -1.0, -0.5, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, 0.5, -0.5, 0.25, 0.25, -0.25, 0.75, 0.5, 1.0, 1.0, -1.0, 0.75, -0.75, -0.75, -0.5, -0.25, -1.0, -1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -1.0, -0.25, -0.75, 0.5, 0.25, -0.25, 1.0, 0.25, -0.75, 0.0, -0.5, 0.75, 0.75, -0.25, 0.75, 0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, 0.25, -0.75, 1.0, ]);
    render_bundle_encoder500.popDebugGroup();
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer507, 0, array12, 0, array12.length);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    device60.pushErrorScope("out-of-memory");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder5040.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer506, 0, array9, 0, array9.length);
    const array15 = new Float32Array([0.5, -0.5, 0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.75, -0.5, 0.5, 0.75, -0.25, -0.75, -0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.25, 1.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -1.0, -0.75, 1.0, -0.25, 1.0, 0.0, 1.0, -0.25, -0.75, 0.0, -0.5, -0.75, 1.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, 0.25, 1.0, -1.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const array16 = new Float32Array([-0.75, 0.0, 0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, -0.75, 1.0, -1.0, 0.0, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.5, -0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 1.0, -0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -0.75, -1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.5, 0.0, 0.25, 0.5, 0.0, -0.75, -0.75, 0.0, -0.75, -0.75, 0.25, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, -0.5, -1.0, 0.5, -0.75, 0.0, 0.0, -0.25, -0.5, -0.25, 0.0, 0.25, 1.0, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.75, 0.5, -0.5, -0.25, ]);
    query201.destroy()
    device20.destroy();
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const array17 = new Float32Array([-1.0, 0.5, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.25, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, -1.0, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, 1.0, 0.0, 1.0, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 0.0, -0.5, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, 0.5, -0.25, -0.25, 0.0, 0.0, 0.0, 0.75, -0.5, 0.0, 0.0, -1.0, -0.5, -0.5, 0.75, 0.0, -0.25, -0.75, 0.25, 1.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, -1.0, 0.25, -0.5, -0.75, -0.25, 1.0, -1.0, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -0.5, 0.0, 0.0, 1.0, ]);
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    device50.queue.writeBuffer(buffer503, 0, array17, 0, array17.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const compute_pass_encoder11000 = command_encoder1100.beginComputePass({ label: "compute_pass_encoder11000" });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder11000.pushDebugGroup("group_marker")
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder502.popDebugGroup();
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query502.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    command_encoder900.insertDebugMarker("mymarker");
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module5010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder5040.insertDebugMarker("marker")
    texture502.destroy();
    compute_pass_encoder5041.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    compute_pass_encoder5050.insertDebugMarker("marker")
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    query900.destroy()
    const array18 = new Float32Array([-0.75, 0.0, 0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.75, 0.25, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 0.5, 0.5, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, -0.75, -0.5, 1.0, 0.25, 0.5, -0.5, -1.0, 0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.25, 1.0, 0.5, -0.75, 0.5, 0.75, 0.0, -0.75, 0.75, 1.0, -0.25, 0.25, 0.25, -0.25, 0.75, 0.5, ]);
    
    render_bundle_encoder500.popDebugGroup();
    
    device110.queue.writeBuffer(buffer1100, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer508, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer509, 0, array13, 0, array13.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer507, 0, array14, 0, array14.length);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    query901.destroy()
    render_bundle_encoder502.popDebugGroup();
    query506.destroy()
    compute_pass_encoder11000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    
    compute_pass_encoder5050.insertDebugMarker("marker")
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device50.queue.writeBuffer(buffer509, 0, array11, 0, array11.length);
    compute_pass_encoder5020.insertDebugMarker("marker")
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    device50.queue.writeBuffer(buffer506, 0, array3, 0, array3.length);
    device110.queue.writeBuffer(buffer1100, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    texture1101.destroy();
    render_bundle_encoder901.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer507, 0, array4, 0, array4.length);
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    texture900.destroy();
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device120.pushErrorScope("internal");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder5020.popDebugGroup()
    device50.queue.writeBuffer(buffer509, 0, array6, 0, array6.length);
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder900.popDebugGroup();
    const command_buffer900 = command_encoder900.finish();
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    {
        await buffer509.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer509.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer509.unmap();
        console.log(new Float32Array(data));
    }
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array14, 0, array14.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    command_encoder1000.insertDebugMarker("mymarker");
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    command_encoder505.copyBufferToBuffer(
        buffer509,
        0,
        buffer509,
        0,
        400
    );
    
    device50.queue.writeBuffer(buffer509, 0, array10, 0, array10.length);
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    device40.queue.writeBuffer(buffer401, 0, array14, 0, array14.length);
    
    device50.queue.writeBuffer(buffer509, 0, array0, 0, array0.length);
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    device50.queue.writeBuffer(buffer509, 0, array1, 0, array1.length);
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const command_buffer1101 = command_encoder1101.finish();
    compute_pass_encoder1000.popDebugGroup()
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1200 = command_encoder1200.finish();
    compute_pass_encoder5041.popDebugGroup()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer901 = command_encoder901.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder10000.popDebugGroup()
    const command_buffer505 = command_encoder505.finish();
    compute_pass_encoder11000.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5050.popDebugGroup()
    compute_pass_encoder5020.popDebugGroup()
}